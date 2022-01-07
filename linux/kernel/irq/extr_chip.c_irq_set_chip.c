
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct irq_chip* chip; } ;
struct irq_desc {TYPE_1__ irq_data; } ;
struct irq_chip {int dummy; } ;


 int EINVAL ;
 struct irq_desc* irq_get_desc_lock (unsigned int,unsigned long*,int ) ;
 int irq_mark_irq (unsigned int) ;
 int irq_put_desc_unlock (struct irq_desc*,unsigned long) ;
 struct irq_chip no_irq_chip ;

int irq_set_chip(unsigned int irq, struct irq_chip *chip)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_lock(irq, &flags, 0);

 if (!desc)
  return -EINVAL;

 if (!chip)
  chip = &no_irq_chip;

 desc->irq_data.chip = chip;
 irq_put_desc_unlock(desc, flags);




 irq_mark_irq(irq);
 return 0;
}
