FROM node:7.10

RUN mkdir -p /usr/local/app
WORKDIR /usr/local/app
COPY . /usr/local/app
RUN npm install -g -s --no-progress yarn node-gyp && \
    yarn && \
    npm rebuild node-sass --force
CMD [ "npm", "run", "start:production:docker" ]
EXPOSE 80
