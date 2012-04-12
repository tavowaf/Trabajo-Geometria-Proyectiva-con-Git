doc = GeoPro

dibus = $(wildcard graph/*.eps)
dibuspdf = $(dibus:.eps=.pdf)


$(doc).pdf: $(doc).tex $(dibuspdf)
	pdflatex $(doc)

%.pdf: %.eps
	epstopdf $*.eps

bib:
	pdflatex $(doc)
	bibtex $(doc)
	pdflatex $(doc)
	pdflatex $(doc)
