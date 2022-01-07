
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int tv_usec; } ;


 int PF_PACKET ;
 int SOCK_RAW ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int do_bind (int) ;
 int errno ;
 int error (int,int ,char*) ;
 int pair_udp_setfilter (int) ;
 scalar_t__ setsockopt (int,int ,int ,struct timeval*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int setup_sniffer(void)
{
 struct timeval tv = { .tv_usec = 100 * 1000 };
 int fd;

 fd = socket(PF_PACKET, SOCK_RAW, 0);
 if (fd == -1)
  error(1, errno, "socket p");

 if (setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)))
  error(1, errno, "setsockopt rcv timeout");

 pair_udp_setfilter(fd);
 do_bind(fd);

 return fd;
}
