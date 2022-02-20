# sh '/Users/serdarbalci/Documents/GitHub/patolojiraporlari/render_and_push.sh'
Rscript -e 'lastmodifiedtext <- paste0("This repository was updated on: ", Sys.time());write(x = lastmodifiedtext, file = "./lastupdate.html")'
Rscript -e 'Sys.setenv(RSTUDIO_PANDOC = "/Applications/RStudio.app/Contents/MacOS/pandoc");rmarkdown::render_site(encoding = "UTF-8")'
Rscript -e 'fs::file_delete("docs/404.html")'
Rscript -e 'fs::file_copy("404.md", "docs/404.md")'
Rscript -e 'fs::dir_delete("docs/R")'
# Rscript -e 'data_path <- here::here("./.github/workflows/");caselistfiles <- dir(data_path, pattern = ".yml", full.names = TRUE);fs::file_copy(path = caselistfiles, new_path = "./prepelectron/.github/workflows", overwrite = TRUE)'
# Rscript -e 'fs::dir_delete("docselectron")'
# Rscript -e 'fs::dir_copy("docs", "~/Documents/GitHub/prepelectron/src", overwrite = TRUE)'
Rscript -e 'fs::dir_copy("docs", "~/Documents/GitHub/wp_patolojiraporlari/docs", overwrite = TRUE)'
# cd prepelectron
# yarn install
# yarn electron-builder -mwl
# npm install
## npm start
# npm run make
# cd ..
# Rscript -e 'fs::dir_copy("~/Documents/GitHub/prepelectron", "docselectron", overwrite = TRUE)'
# mkdir -p docselectron
# cd docselectron
# npm init -y
# npm install
# npx create-electron-app@latest docselectron
# Rscript -e 'if (!fs::dir_exists("docselectron/src")) {fs::dir_delete("docselectron/src")}'
# Rscript -e 'fs::dir_copy("docs", "docselectron/src", overwrite = TRUE)'
# Rscript -e 'if (!fs::file_exists("docselectron/.gitignore")) {fs::file_copy(".gitignore", "docselectron/.gitignore")}'
# Rscript -e 'if (!fs::dir_exists("docselectron")) {fs::dir_create("docselectron")}'
# Rscript -e 'if (!fs::dir_exists("docselectron/.github")) {fs::dir_create("docselectron/.github")}'
# Rscript -e 'if (!fs::dir_exists("docselectron/.github/workflows")) {fs::dir_create("docselectron/.github/workflows")}'
# Rscript -e 'fs::file_copy(".github/workflows/buildelectron.yml", "docselectron/.github/workflows/buildelectron.yml")'
# cd docselectron
# npm run make
# npm install
# npm install --save-dev @electron-forge/cli
# npm exec --package=@electron-forge/cli -c "electron-forge import"
# cd ..
act --secret-file ~/my.secrets # https://github.com/nektos/act
git add .
git commit -m "WIP local render added changes `date +'%Y-%m-%d %H:%M:%S'`" # WIP ifadesi eklenirse github actions çalışmaz.
# git commit -m "local render added changes `date +'%Y-%m-%d %H:%M:%S'`"
# git push origin main
