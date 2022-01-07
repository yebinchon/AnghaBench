
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct signal_struct {int group_stop_count; } ;
struct TYPE_2__ {unsigned long jobctl; struct signal_struct* signal; } ;


 unsigned long JOBCTL_STOP_CONSUME ;
 unsigned long JOBCTL_STOP_PENDING ;
 unsigned long JOBCTL_STOP_SIGMASK ;
 TYPE_1__* current ;
 scalar_t__ task_set_jobctl_pending (struct task_struct*,unsigned long) ;

void task_join_group_stop(struct task_struct *task)
{

 unsigned long jobctl = current->jobctl;
 if (jobctl & JOBCTL_STOP_PENDING) {
  struct signal_struct *sig = current->signal;
  unsigned long signr = jobctl & JOBCTL_STOP_SIGMASK;
  unsigned long gstop = JOBCTL_STOP_PENDING | JOBCTL_STOP_CONSUME;
  if (task_set_jobctl_pending(task, signr | gstop)) {
   sig->group_stop_count++;
  }
 }
}
