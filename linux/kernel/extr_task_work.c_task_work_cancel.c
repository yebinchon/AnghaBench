
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_work_func_t ;
struct task_struct {int pi_lock; struct callback_head* task_works; } ;
struct callback_head {scalar_t__ func; struct callback_head* next; } ;


 struct callback_head* READ_ONCE (struct callback_head*) ;
 struct callback_head* cmpxchg (struct callback_head**,struct callback_head*,struct callback_head*) ;
 scalar_t__ likely (int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

struct callback_head *
task_work_cancel(struct task_struct *task, task_work_func_t func)
{
 struct callback_head **pprev = &task->task_works;
 struct callback_head *work;
 unsigned long flags;

 if (likely(!task->task_works))
  return ((void*)0);






 raw_spin_lock_irqsave(&task->pi_lock, flags);
 while ((work = READ_ONCE(*pprev))) {
  if (work->func != func)
   pprev = &work->next;
  else if (cmpxchg(pprev, work, work->next) == work)
   break;
 }
 raw_spin_unlock_irqrestore(&task->pi_lock, flags);

 return work;
}
