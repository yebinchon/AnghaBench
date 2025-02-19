
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int * chip; } ;
struct irq_chip_type {unsigned int type; int handler; int chip; } ;
struct irq_chip_generic {unsigned int num_ct; struct irq_chip_type* chip_types; } ;
struct TYPE_2__ {int handle_irq; } ;


 int EINVAL ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 TYPE_1__* irq_data_to_desc (struct irq_data*) ;

int irq_setup_alt_chip(struct irq_data *d, unsigned int type)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct irq_chip_type *ct = gc->chip_types;
 unsigned int i;

 for (i = 0; i < gc->num_ct; i++, ct++) {
  if (ct->type & type) {
   d->chip = &ct->chip;
   irq_data_to_desc(d)->handle_irq = ct->handler;
   return 0;
  }
 }
 return -EINVAL;
}
