
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct irq_chip* chip; } ;
struct irq_desc {int istate; int lock; TYPE_1__ irq_data; int action; } ;
struct irq_chip {int flags; int (* irq_eoi ) (TYPE_1__*) ;} ;


 int IRQCHIP_EOI_IF_HANDLED ;
 int IRQS_ONESHOT ;
 int IRQS_PENDING ;
 int IRQS_REPLAY ;
 int IRQS_WAITING ;
 int cond_unmask_eoi_irq (struct irq_desc*,struct irq_chip*) ;
 int handle_irq_event (struct irq_desc*) ;
 int irq_may_run (struct irq_desc*) ;
 scalar_t__ irqd_irq_disabled (TYPE_1__*) ;
 int kstat_incr_irqs_this_cpu (struct irq_desc*) ;
 int mask_irq (struct irq_desc*) ;
 int preflow_handler (struct irq_desc*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

void handle_fasteoi_irq(struct irq_desc *desc)
{
 struct irq_chip *chip = desc->irq_data.chip;

 raw_spin_lock(&desc->lock);

 if (!irq_may_run(desc))
  goto out;

 desc->istate &= ~(IRQS_REPLAY | IRQS_WAITING);





 if (unlikely(!desc->action || irqd_irq_disabled(&desc->irq_data))) {
  desc->istate |= IRQS_PENDING;
  mask_irq(desc);
  goto out;
 }

 kstat_incr_irqs_this_cpu(desc);
 if (desc->istate & IRQS_ONESHOT)
  mask_irq(desc);

 preflow_handler(desc);
 handle_irq_event(desc);

 cond_unmask_eoi_irq(desc, chip);

 raw_spin_unlock(&desc->lock);
 return;
out:
 if (!(chip->flags & IRQCHIP_EOI_IF_HANDLED))
  chip->irq_eoi(&desc->irq_data);
 raw_spin_unlock(&desc->lock);
}
