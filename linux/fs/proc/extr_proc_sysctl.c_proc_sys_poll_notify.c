
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_poll {int wait; int event; } ;


 int atomic_inc (int *) ;
 int wake_up_interruptible (int *) ;

void proc_sys_poll_notify(struct ctl_table_poll *poll)
{
 if (!poll)
  return;

 atomic_inc(&poll->event);
 wake_up_interruptible(&poll->wait);
}
