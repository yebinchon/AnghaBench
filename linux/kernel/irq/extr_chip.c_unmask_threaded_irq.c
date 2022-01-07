
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct irq_chip* chip; } ;
struct irq_desc {TYPE_1__ irq_data; } ;
struct irq_chip {int flags; int (* irq_eoi ) (TYPE_1__*) ;} ;


 int IRQCHIP_EOI_THREADED ;
 int stub1 (TYPE_1__*) ;
 int unmask_irq (struct irq_desc*) ;

void unmask_threaded_irq(struct irq_desc *desc)
{
 struct irq_chip *chip = desc->irq_data.chip;

 if (chip->flags & IRQCHIP_EOI_THREADED)
  chip->irq_eoi(&desc->irq_data);

 unmask_irq(desc);
}
