
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; int revents; } ;


 scalar_t__ EINTR ;
 int POLLIN ;
 int debug (char*) ;
 scalar_t__ errno ;
 int poll (struct pollfd*,int,int) ;

__attribute__((used)) static int cg_wait_for(int fd)
{
 int ret = -1;
 struct pollfd fds = {
  .fd = fd,
  .events = POLLIN,
 };

 while (1) {
  ret = poll(&fds, 1, 10000);

  if (ret == -1) {
   if (errno == EINTR)
    continue;
   debug("Error: poll() failed\n");
   break;
  }

  if (ret > 0 && fds.revents & POLLIN) {
   ret = 0;
   break;
  }
 }

 return ret;
}
