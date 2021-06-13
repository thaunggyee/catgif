FROM python:3.6

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r flask-app/requirements.txt

# define the port number the container should expose
EXPOSE 8080

# run the command
CMD ["python", "flask-app/app.py"]

