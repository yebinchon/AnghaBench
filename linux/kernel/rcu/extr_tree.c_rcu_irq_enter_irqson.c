
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rcu_irq_enter () ;

void rcu_irq_enter_irqson(void)
{
 unsigned long flags;

 local_irq_save(flags);
 rcu_irq_enter();
 local_irq_restore(flags);
}
