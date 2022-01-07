
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int jobctl; TYPE_1__* sighand; int state; } ;
struct TYPE_2__ {int siglock; } ;


 int JOBCTL_LISTENING ;
 int __TASK_TRACED ;
 int __fatal_signal_pending (struct task_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ task_is_traced (struct task_struct*) ;

__attribute__((used)) static bool ptrace_freeze_traced(struct task_struct *task)
{
 bool ret = 0;


 if (task->jobctl & JOBCTL_LISTENING)
  return ret;

 spin_lock_irq(&task->sighand->siglock);
 if (task_is_traced(task) && !__fatal_signal_pending(task)) {
  task->state = __TASK_TRACED;
  ret = 1;
 }
 spin_unlock_irq(&task->sighand->siglock);

 return ret;
}
