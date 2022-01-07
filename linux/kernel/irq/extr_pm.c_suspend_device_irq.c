
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int istate; int irq_data; scalar_t__ no_suspend_depth; int action; } ;
struct TYPE_2__ {int flags; } ;


 int IRQCHIP_MASK_ON_SUSPEND ;
 int IRQD_WAKEUP_ARMED ;
 int IRQS_SUSPENDED ;
 int __disable_irq (struct irq_desc*) ;
 TYPE_1__* irq_desc_get_chip (struct irq_desc*) ;
 scalar_t__ irq_desc_is_chained (struct irq_desc*) ;
 scalar_t__ irqd_is_wakeup_set (int *) ;
 int irqd_set (int *,int ) ;
 int mask_irq (struct irq_desc*) ;

__attribute__((used)) static bool suspend_device_irq(struct irq_desc *desc)
{
 if (!desc->action || irq_desc_is_chained(desc) ||
     desc->no_suspend_depth)
  return 0;

 if (irqd_is_wakeup_set(&desc->irq_data)) {
  irqd_set(&desc->irq_data, IRQD_WAKEUP_ARMED);






  return 1;
 }

 desc->istate |= IRQS_SUSPENDED;
 __disable_irq(desc);







 if (irq_desc_get_chip(desc)->flags & IRQCHIP_MASK_ON_SUSPEND)
  mask_irq(desc);
 return 1;
}
