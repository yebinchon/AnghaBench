
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* chip; } ;
struct irq_desc {int istate; int lock; TYPE_2__ irq_data; int action; } ;
struct TYPE_5__ {int (* irq_ack ) (TYPE_2__*) ;} ;


 int IRQS_PENDING ;
 int IRQS_REPLAY ;
 int IRQS_WAITING ;
 int handle_irq_event (struct irq_desc*) ;
 int irq_may_run (struct irq_desc*) ;
 scalar_t__ irqd_irq_disabled (TYPE_2__*) ;
 scalar_t__ irqd_irq_masked (TYPE_2__*) ;
 int kstat_incr_irqs_this_cpu (struct irq_desc*) ;
 int mask_ack_irq (struct irq_desc*) ;
 int mask_irq (struct irq_desc*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;
 int unmask_irq (struct irq_desc*) ;

void handle_edge_irq(struct irq_desc *desc)
{
 raw_spin_lock(&desc->lock);

 desc->istate &= ~(IRQS_REPLAY | IRQS_WAITING);

 if (!irq_may_run(desc)) {
  desc->istate |= IRQS_PENDING;
  mask_ack_irq(desc);
  goto out_unlock;
 }





 if (irqd_irq_disabled(&desc->irq_data) || !desc->action) {
  desc->istate |= IRQS_PENDING;
  mask_ack_irq(desc);
  goto out_unlock;
 }

 kstat_incr_irqs_this_cpu(desc);


 desc->irq_data.chip->irq_ack(&desc->irq_data);

 do {
  if (unlikely(!desc->action)) {
   mask_irq(desc);
   goto out_unlock;
  }






  if (unlikely(desc->istate & IRQS_PENDING)) {
   if (!irqd_irq_disabled(&desc->irq_data) &&
       irqd_irq_masked(&desc->irq_data))
    unmask_irq(desc);
  }

  handle_irq_event(desc);

 } while ((desc->istate & IRQS_PENDING) &&
   !irqd_irq_disabled(&desc->irq_data));

out_unlock:
 raw_spin_unlock(&desc->lock);
}
