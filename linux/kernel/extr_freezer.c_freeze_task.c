
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;


 int PF_KTHREAD ;
 int TASK_INTERRUPTIBLE ;
 int fake_signal_wake_up (struct task_struct*) ;
 int freezer_lock ;
 scalar_t__ freezer_should_skip (struct task_struct*) ;
 int freezing (struct task_struct*) ;
 scalar_t__ frozen (struct task_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_state (struct task_struct*,int ) ;

bool freeze_task(struct task_struct *p)
{
 unsigned long flags;
 if (freezer_should_skip(p))
  return 0;

 spin_lock_irqsave(&freezer_lock, flags);
 if (!freezing(p) || frozen(p)) {
  spin_unlock_irqrestore(&freezer_lock, flags);
  return 0;
 }

 if (!(p->flags & PF_KTHREAD))
  fake_signal_wake_up(p);
 else
  wake_up_state(p, TASK_INTERRUPTIBLE);

 spin_unlock_irqrestore(&freezer_lock, flags);
 return 1;
}
