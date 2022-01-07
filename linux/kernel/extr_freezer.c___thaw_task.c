
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int freezer_lock ;
 scalar_t__ frozen (struct task_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (struct task_struct*) ;

void __thaw_task(struct task_struct *p)
{
 unsigned long flags;

 spin_lock_irqsave(&freezer_lock, flags);
 if (frozen(p))
  wake_up_process(p);
 spin_unlock_irqrestore(&freezer_lock, flags);
}
