
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ donetail; scalar_t__ curtail; } ;


 int RCU_SOFTIRQ ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int raise_softirq_irqoff (int ) ;
 TYPE_1__ rcu_ctrlblk ;

void rcu_qs(void)
{
 unsigned long flags;

 local_irq_save(flags);
 if (rcu_ctrlblk.donetail != rcu_ctrlblk.curtail) {
  rcu_ctrlblk.donetail = rcu_ctrlblk.curtail;
  raise_softirq_irqoff(RCU_SOFTIRQ);
 }
 local_irq_restore(flags);
}
