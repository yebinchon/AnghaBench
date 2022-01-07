
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;


 int EXIT_FAILURE ;
 int POLLIN ;
 int err (int ,char*) ;
 int poll (struct pollfd*,int,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void ready(int ready_out, int wakefd)
{
 char dummy;
 struct pollfd pollfd = { .fd = wakefd, .events = POLLIN };


 if (write(ready_out, &dummy, 1) != 1)
  err(EXIT_FAILURE, "CLIENT: ready write");


 if (poll(&pollfd, 1, -1) != 1)
  err(EXIT_FAILURE, "poll");
}
