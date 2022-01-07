
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct atomic_notifier_head {int lock; int head; } ;


 int notifier_chain_unregister (int *,struct notifier_block*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_rcu () ;

int atomic_notifier_chain_unregister(struct atomic_notifier_head *nh,
  struct notifier_block *n)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&nh->lock, flags);
 ret = notifier_chain_unregister(&nh->head, n);
 spin_unlock_irqrestore(&nh->lock, flags);
 synchronize_rcu();
 return ret;
}
