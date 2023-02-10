FROM rocker/rstudio:4.1.3

RUN whoami
RUN pwd
RUN ls -alh

RUN Rscript -e "install.packages('cowsay')"

WORKDIR /Users/wxw1026/git/dsci310-dockerfile-practice

RUN pwd

COPY renv.lock .
COPY renv renv
COPY .Rprofile .

RUN ls -alh


