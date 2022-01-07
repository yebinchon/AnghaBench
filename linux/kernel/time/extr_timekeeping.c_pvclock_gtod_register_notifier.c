
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timekeeper {int dummy; } ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {struct timekeeper timekeeper; } ;


 int pvclock_gtod_chain ;
 int raw_notifier_chain_register (int *,struct notifier_block*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int timekeeper_lock ;
 TYPE_1__ tk_core ;
 int update_pvclock_gtod (struct timekeeper*,int) ;

int pvclock_gtod_register_notifier(struct notifier_block *nb)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned long flags;
 int ret;

 raw_spin_lock_irqsave(&timekeeper_lock, flags);
 ret = raw_notifier_chain_register(&pvclock_gtod_chain, nb);
 update_pvclock_gtod(tk, 1);
 raw_spin_unlock_irqrestore(&timekeeper_lock, flags);

 return ret;
}
