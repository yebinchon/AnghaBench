
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int istate; int irq_data; int threads_oneshot; } ;
struct irq_chip {int flags; int (* irq_eoi ) (int *) ;} ;


 int IRQCHIP_EOI_THREADED ;
 int IRQS_ONESHOT ;
 int irqd_irq_disabled (int *) ;
 scalar_t__ irqd_irq_masked (int *) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int unmask_irq (struct irq_desc*) ;

__attribute__((used)) static void cond_unmask_eoi_irq(struct irq_desc *desc, struct irq_chip *chip)
{
 if (!(desc->istate & IRQS_ONESHOT)) {
  chip->irq_eoi(&desc->irq_data);
  return;
 }






 if (!irqd_irq_disabled(&desc->irq_data) &&
     irqd_irq_masked(&desc->irq_data) && !desc->threads_oneshot) {
  chip->irq_eoi(&desc->irq_data);
  unmask_irq(desc);
 } else if (!(chip->flags & IRQCHIP_EOI_THREADED)) {
  chip->irq_eoi(&desc->irq_data);
 }
}
