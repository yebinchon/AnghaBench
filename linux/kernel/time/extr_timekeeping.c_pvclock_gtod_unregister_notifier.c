
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int pvclock_gtod_chain ;
 int raw_notifier_chain_unregister (int *,struct notifier_block*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int timekeeper_lock ;

int pvclock_gtod_unregister_notifier(struct notifier_block *nb)
{
 unsigned long flags;
 int ret;

 raw_spin_lock_irqsave(&timekeeper_lock, flags);
 ret = raw_notifier_chain_unregister(&pvclock_gtod_chain, nb);
 raw_spin_unlock_irqrestore(&timekeeper_lock, flags);

 return ret;
}
