
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ tomoyo_log_count ;
 int tomoyo_log_wait ;

__poll_t tomoyo_poll_log(struct file *file, poll_table *wait)
{
 if (tomoyo_log_count)
  return EPOLLIN | EPOLLRDNORM;
 poll_wait(file, &tomoyo_log_wait, wait);
 if (tomoyo_log_count)
  return EPOLLIN | EPOLLRDNORM;
 return 0;
}
