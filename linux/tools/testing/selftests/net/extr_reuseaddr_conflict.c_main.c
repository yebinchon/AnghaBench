
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORT ;
 int close (int) ;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*,...) ;
 int open_port (int,int) ;
 int stderr ;

int main(void)
{
 int listenfd;
 int fd1, fd2;

 fprintf(stderr, "Opening 127.0.0.1:%d\n", PORT);
 listenfd = open_port(0, 0);
 if (listenfd < 0)
  error(1, errno, "Couldn't open listen socket");
 fprintf(stderr, "Opening INADDR_ANY:%d\n", PORT);
 fd1 = open_port(0, 1);
 if (fd1 >= 0)
  error(1, 0, "Was allowed to create an ipv4 reuseport on a already bound non-reuseport socket");
 fprintf(stderr, "Opening in6addr_any:%d\n", PORT);
 fd1 = open_port(1, 1);
 if (fd1 < 0)
  error(1, errno, "Couldn't open ipv6 reuseport");
 fprintf(stderr, "Opening INADDR_ANY:%d\n", PORT);
 fd2 = open_port(0, 1);
 if (fd2 >= 0)
  error(1, 0, "Was allowed to create an ipv4 reuseport on a already bound non-reuseport socket");
 close(fd1);
 fprintf(stderr, "Opening INADDR_ANY:%d after closing ipv6 socket\n", PORT);
 fd1 = open_port(0, 1);
 if (fd1 >= 0)
  error(1, 0, "Was allowed to create an ipv4 reuseport on an already bound non-reuseport socket with no ipv6");
 fprintf(stderr, "Success");
 return 0;
}
