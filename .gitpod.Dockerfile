FROM gitpod/workspace-full
                    
USER gitpod

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo ./aws/install && \
    rm -Rf ./aws awscliv2.zip
    
# RUN sudo apt-get -q update && 
#     sudo apt-get install -yq bastet &&
#     sudo rm -rf /var/lib/apt/lists/*
# 
# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
