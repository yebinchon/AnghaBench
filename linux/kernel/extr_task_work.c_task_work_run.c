
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; int pi_lock; int task_works; } ;
struct callback_head {int (* func ) (struct callback_head*) ;struct callback_head* next; } ;


 int PF_EXITING ;
 struct callback_head* READ_ONCE (int ) ;
 struct callback_head* cmpxchg (int *,struct callback_head*,struct callback_head*) ;
 int cond_resched () ;
 struct task_struct* current ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int stub1 (struct callback_head*) ;
 struct callback_head work_exited ;

void task_work_run(void)
{
 struct task_struct *task = current;
 struct callback_head *work, *head, *next;

 for (;;) {




  raw_spin_lock_irq(&task->pi_lock);
  do {
   work = READ_ONCE(task->task_works);
   head = !work && (task->flags & PF_EXITING) ?
    &work_exited : ((void*)0);
  } while (cmpxchg(&task->task_works, work, head) != work);
  raw_spin_unlock_irq(&task->pi_lock);

  if (!work)
   break;

  do {
   next = work->next;
   work->func(work);
   work = next;
   cond_resched();
  } while (work);
 }
}
