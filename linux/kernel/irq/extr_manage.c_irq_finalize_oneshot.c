
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {scalar_t__ handler; int thread_mask; int thread_flags; } ;
struct irq_desc {int istate; int lock; int irq_data; int threads_oneshot; } ;


 int IRQS_ONESHOT ;
 int IRQTF_RUNTHREAD ;
 int chip_bus_lock (struct irq_desc*) ;
 int chip_bus_sync_unlock (struct irq_desc*) ;
 int cpu_relax () ;
 scalar_t__ irq_forced_secondary_handler ;
 int irqd_irq_disabled (int *) ;
 int irqd_irq_inprogress (int *) ;
 scalar_t__ irqd_irq_masked (int *) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int unmask_threaded_irq (struct irq_desc*) ;

__attribute__((used)) static void irq_finalize_oneshot(struct irq_desc *desc,
     struct irqaction *action)
{
 if (!(desc->istate & IRQS_ONESHOT) ||
     action->handler == irq_forced_secondary_handler)
  return;
again:
 chip_bus_lock(desc);
 raw_spin_lock_irq(&desc->lock);
 if (unlikely(irqd_irq_inprogress(&desc->irq_data))) {
  raw_spin_unlock_irq(&desc->lock);
  chip_bus_sync_unlock(desc);
  cpu_relax();
  goto again;
 }






 if (test_bit(IRQTF_RUNTHREAD, &action->thread_flags))
  goto out_unlock;

 desc->threads_oneshot &= ~action->thread_mask;

 if (!desc->threads_oneshot && !irqd_irq_disabled(&desc->irq_data) &&
     irqd_irq_masked(&desc->irq_data))
  unmask_threaded_irq(desc);

out_unlock:
 raw_spin_unlock_irq(&desc->lock);
 chip_bus_sync_unlock(desc);
}
