
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int revents; int fd; } ;


 int cfg_waittime_ms ;
 int errno ;
 int error (int,int ,char*) ;
 int poll (struct pollfd*,int,int ) ;

__attribute__((used)) static int do_poll(int fd, int events)
{
 struct pollfd pfd;
 int ret;

 pfd.events = events;
 pfd.revents = 0;
 pfd.fd = fd;

 ret = poll(&pfd, 1, cfg_waittime_ms);
 if (ret == -1)
  error(1, errno, "poll");

 return ret && (pfd.revents & events);
}
