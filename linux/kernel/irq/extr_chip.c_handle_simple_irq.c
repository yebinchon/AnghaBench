
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int istate; int lock; int irq_data; int action; } ;


 int IRQS_PENDING ;
 int IRQS_REPLAY ;
 int IRQS_WAITING ;
 int handle_irq_event (struct irq_desc*) ;
 int irq_may_run (struct irq_desc*) ;
 scalar_t__ irqd_irq_disabled (int *) ;
 int kstat_incr_irqs_this_cpu (struct irq_desc*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void handle_simple_irq(struct irq_desc *desc)
{
 raw_spin_lock(&desc->lock);

 if (!irq_may_run(desc))
  goto out_unlock;

 desc->istate &= ~(IRQS_REPLAY | IRQS_WAITING);

 if (unlikely(!desc->action || irqd_irq_disabled(&desc->irq_data))) {
  desc->istate |= IRQS_PENDING;
  goto out_unlock;
 }

 kstat_incr_irqs_this_cpu(desc);
 handle_irq_event(desc);

out_unlock:
 raw_spin_unlock(&desc->lock);
}
