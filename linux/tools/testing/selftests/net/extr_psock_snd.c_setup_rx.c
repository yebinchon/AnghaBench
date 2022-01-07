
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tv ;
struct timeval {int tv_usec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; int member_0; } ;
typedef int raddr ;


 int AF_INET ;
 int INADDR_ANY ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 scalar_t__ bind (int,void*,int) ;
 int cfg_port ;
 int errno ;
 int error (int,int ,char*) ;
 int htonl (int ) ;
 int htons (int ) ;
 scalar_t__ setsockopt (int,int ,int ,struct timeval*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int setup_rx(void)
{
 struct timeval tv = { .tv_usec = 100 * 1000 };
 struct sockaddr_in raddr = {0};
 int fd;

 fd = socket(PF_INET, SOCK_DGRAM, 0);
 if (fd == -1)
  error(1, errno, "socket r");

 if (setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)))
  error(1, errno, "setsockopt rcv timeout");

 raddr.sin_family = AF_INET;
 raddr.sin_port = htons(cfg_port);
 raddr.sin_addr.s_addr = htonl(INADDR_ANY);

 if (bind(fd, (void *)&raddr, sizeof(raddr)))
  error(1, errno, "bind r");

 return fd;
}
