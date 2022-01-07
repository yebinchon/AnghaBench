
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 scalar_t__ close (int) ;
 int errno ;
 int error (int,int ,char*) ;
 int parse_opts (int,char**) ;
 int run_tests (int) ;
 int socket (int ,int ,int ) ;

int main(int argc, char **argv)
{
 int fd;

 parse_opts(argc, argv);

 fd = socket(PF_INET6, SOCK_DGRAM, 0);
 if (fd == -1)
  error(1, errno, "socket");

 run_tests(fd);

 if (close(fd))
  error(1, errno, "close");

 return 0;
}
