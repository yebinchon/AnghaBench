
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int istate; int lock; int irq_data; int action; } ;


 int IRQD_IRQ_INPROGRESS ;
 int IRQS_PENDING ;
 int IRQS_REPLAY ;
 int IRQS_WAITING ;
 int __handle_irq_event_percpu (struct irq_desc*,unsigned int*) ;
 int irq_may_run (struct irq_desc*) ;
 int irqd_clear (int *,int ) ;
 scalar_t__ irqd_irq_disabled (int *) ;
 int irqd_set (int *,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void handle_untracked_irq(struct irq_desc *desc)
{
 unsigned int flags = 0;

 raw_spin_lock(&desc->lock);

 if (!irq_may_run(desc))
  goto out_unlock;

 desc->istate &= ~(IRQS_REPLAY | IRQS_WAITING);

 if (unlikely(!desc->action || irqd_irq_disabled(&desc->irq_data))) {
  desc->istate |= IRQS_PENDING;
  goto out_unlock;
 }

 desc->istate &= ~IRQS_PENDING;
 irqd_set(&desc->irq_data, IRQD_IRQ_INPROGRESS);
 raw_spin_unlock(&desc->lock);

 __handle_irq_event_percpu(desc, &flags);

 raw_spin_lock(&desc->lock);
 irqd_clear(&desc->irq_data, IRQD_IRQ_INPROGRESS);

out_unlock:
 raw_spin_unlock(&desc->lock);
}
