#!/bin/bash

# Build content and static files
./generate-for-production.sh

# Copy files needed to deploy on GitHub Pages
cp ./deploy/CNAME ./docs/CNAME
cp ./deploy/.nojekyll ./docs/.nojekyll

# Set user
git config user.name "This Guy Lifts"
git config user.email "thisguylifts.com@outlook.com"

# Commit and push
git checkout master
git add .
git commit -m "Update"
git push