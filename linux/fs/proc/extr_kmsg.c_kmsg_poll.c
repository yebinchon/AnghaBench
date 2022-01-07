
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int SYSLOG_ACTION_SIZE_UNREAD ;
 int SYSLOG_FROM_PROC ;
 scalar_t__ do_syslog (int ,int *,int ,int ) ;
 int log_wait ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t kmsg_poll(struct file *file, poll_table *wait)
{
 poll_wait(file, &log_wait, wait);
 if (do_syslog(SYSLOG_ACTION_SIZE_UNREAD, ((void*)0), 0, SYSLOG_FROM_PROC))
  return EPOLLIN | EPOLLRDNORM;
 return 0;
}
