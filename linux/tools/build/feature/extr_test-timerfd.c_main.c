
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimerspec {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int TFD_NONBLOCK ;
 int timerfd_create (int ,int ) ;
 scalar_t__ timerfd_settime (int,int ,struct itimerspec*,int *) ;

int main(void)
{
 struct itimerspec new_value;

 int fd = timerfd_create(CLOCK_MONOTONIC, TFD_NONBLOCK);
 if (fd < 0)
  return 1;

 if (timerfd_settime(fd, 0, &new_value, ((void*)0)) != 0)
  return 1;

 return 0;
}
