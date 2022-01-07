
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {scalar_t__ state; scalar_t__ parent; TYPE_1__* sighand; int ptrace; } ;
struct TYPE_2__ {int siglock; } ;


 scalar_t__ TASK_TRACED ;
 int WARN_ON (int) ;
 scalar_t__ __TASK_TRACED ;
 scalar_t__ __fatal_signal_pending (struct task_struct*) ;
 scalar_t__ current ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up_state (struct task_struct*,scalar_t__) ;

__attribute__((used)) static void ptrace_unfreeze_traced(struct task_struct *task)
{
 if (task->state != __TASK_TRACED)
  return;

 WARN_ON(!task->ptrace || task->parent != current);





 spin_lock_irq(&task->sighand->siglock);
 if (task->state == __TASK_TRACED) {
  if (__fatal_signal_pending(task))
   wake_up_state(task, __TASK_TRACED);
  else
   task->state = TASK_TRACED;
 }
 spin_unlock_irq(&task->sighand->siglock);
}
