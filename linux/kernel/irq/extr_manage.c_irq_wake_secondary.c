
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {struct irqaction* secondary; } ;
struct irq_desc {int lock; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int __irq_wake_thread (struct irq_desc*,struct irqaction*) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;

__attribute__((used)) static void irq_wake_secondary(struct irq_desc *desc, struct irqaction *action)
{
 struct irqaction *secondary = action->secondary;

 if (WARN_ON_ONCE(!secondary))
  return;

 raw_spin_lock_irq(&desc->lock);
 __irq_wake_thread(desc, secondary);
 raw_spin_unlock_irq(&desc->lock);
}
