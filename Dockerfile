FROM node 

WORKDIR /usr/src/

COPY . .

EXPOSE 5000

RUN npm i && npx prisma generate
RUN npm run build
CMD ["npm", "run", "start"]