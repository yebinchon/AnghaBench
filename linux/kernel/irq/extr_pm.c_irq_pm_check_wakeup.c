
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int istate; int depth; int irq_data; } ;


 int IRQD_WAKEUP_ARMED ;
 int IRQS_PENDING ;
 int IRQS_SUSPENDED ;
 int irq_desc_get_irq (struct irq_desc*) ;
 int irq_disable (struct irq_desc*) ;
 int irqd_clear (int *,int ) ;
 scalar_t__ irqd_is_wakeup_armed (int *) ;
 int pm_system_irq_wakeup (int ) ;

bool irq_pm_check_wakeup(struct irq_desc *desc)
{
 if (irqd_is_wakeup_armed(&desc->irq_data)) {
  irqd_clear(&desc->irq_data, IRQD_WAKEUP_ARMED);
  desc->istate |= IRQS_SUSPENDED | IRQS_PENDING;
  desc->depth++;
  irq_disable(desc);
  pm_system_irq_wakeup(irq_desc_get_irq(desc));
  return 1;
 }
 return 0;
}
