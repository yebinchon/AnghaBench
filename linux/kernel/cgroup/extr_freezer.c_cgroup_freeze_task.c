
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int jobctl; } ;


 int JOBCTL_TRAP_FREEZE ;
 int lock_task_sighand (struct task_struct*,unsigned long*) ;
 int signal_wake_up (struct task_struct*,int) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void cgroup_freeze_task(struct task_struct *task, bool freeze)
{
 unsigned long flags;


 if (!lock_task_sighand(task, &flags))
  return;

 if (freeze) {
  task->jobctl |= JOBCTL_TRAP_FREEZE;
  signal_wake_up(task, 0);
 } else {
  task->jobctl &= ~JOBCTL_TRAP_FREEZE;
  wake_up_process(task);
 }

 unlock_task_sighand(task, &flags);
}
