
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; short events; int revents; } ;


 int POLLIN ;
 int errno ;
 int error (int,int ,char*,...) ;
 int poll (struct pollfd*,int,int) ;

__attribute__((used)) static int do_poll(int fd, short events, int timeout)
{
 struct pollfd pfd;
 int ret;

 pfd.fd = fd;
 pfd.events = events;

 ret = poll(&pfd, 1, timeout);
 if (ret == -1)
  error(1, errno, "poll");
 if (ret && !(pfd.revents & POLLIN))
  error(1, errno, "poll: unexpected event 0x%x\n", pfd.revents);

 return ret;
}
