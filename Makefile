all: cv pdf

cv: citation
	Rscript -e 'rmarkdown::render("index.Rmd")'

cv2:
	Rscript -e 'rmarkdown::render("index.Rmd")'

pdf:
	Rscript -e 'pagedown::chrome_print("index.html", "xushuangbin.pdf")'

citation: 
	Rscript -e 'source("citation.R")'; 

