
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pi_lock; int flags; } ;
struct cpumask {int dummy; } ;


 int PF_NO_SETAFFINITY ;
 int WARN_ON (int) ;
 int do_set_cpus_allowed (struct task_struct*,struct cpumask const*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_task_inactive (struct task_struct*,long) ;

__attribute__((used)) static void __kthread_bind_mask(struct task_struct *p, const struct cpumask *mask, long state)
{
 unsigned long flags;

 if (!wait_task_inactive(p, state)) {
  WARN_ON(1);
  return;
 }


 raw_spin_lock_irqsave(&p->pi_lock, flags);
 do_set_cpus_allowed(p, mask);
 p->flags |= PF_NO_SETAFFINITY;
 raw_spin_unlock_irqrestore(&p->pi_lock, flags);
}
