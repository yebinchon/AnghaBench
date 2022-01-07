
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain_chip_generic {int irqs_per_chip; int gc_flags; int irq_flags_to_set; int irq_flags_to_clear; } ;
struct irq_domain {struct irq_domain_chip_generic* gc; } ;
struct irq_data {int mask; } ;
struct irq_chip {int (* irq_calc_mask ) (struct irq_data*) ;} ;
struct irq_chip_type {int handler; struct irq_chip chip; } ;
struct irq_chip_generic {int installed; int lock; struct irq_chip_type* chip_types; int unused; } ;
typedef int irq_hw_number_t ;


 int EBUSY ;
 int ENOTSUPP ;
 int IRQ_GC_INIT_NESTED_LOCK ;
 scalar_t__ IS_ERR (struct irq_chip_generic*) ;
 int PTR_ERR (struct irq_chip_generic*) ;
 struct irq_chip_generic* __irq_get_domain_generic_chip (struct irq_domain*,int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int,struct irq_chip*,struct irq_chip_generic*,int ,int *,int *) ;
 int irq_gc_init_mask_cache (struct irq_chip_generic*,int) ;
 int irq_modify_status (unsigned int,int ,int ) ;
 int irq_nested_lock_class ;
 int irq_nested_request_class ;
 int irq_set_lockdep_class (unsigned int,int *,int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int set_bit (int,int *) ;
 int stub1 (struct irq_data*) ;
 scalar_t__ test_bit (int,int *) ;

int irq_map_generic_chip(struct irq_domain *d, unsigned int virq,
    irq_hw_number_t hw_irq)
{
 struct irq_data *data = irq_domain_get_irq_data(d, virq);
 struct irq_domain_chip_generic *dgc = d->gc;
 struct irq_chip_generic *gc;
 struct irq_chip_type *ct;
 struct irq_chip *chip;
 unsigned long flags;
 int idx;

 gc = __irq_get_domain_generic_chip(d, hw_irq);
 if (IS_ERR(gc))
  return PTR_ERR(gc);

 idx = hw_irq % dgc->irqs_per_chip;

 if (test_bit(idx, &gc->unused))
  return -ENOTSUPP;

 if (test_bit(idx, &gc->installed))
  return -EBUSY;

 ct = gc->chip_types;
 chip = &ct->chip;


 if (!gc->installed) {
  raw_spin_lock_irqsave(&gc->lock, flags);
  irq_gc_init_mask_cache(gc, dgc->gc_flags);
  raw_spin_unlock_irqrestore(&gc->lock, flags);
 }


 set_bit(idx, &gc->installed);

 if (dgc->gc_flags & IRQ_GC_INIT_NESTED_LOCK)
  irq_set_lockdep_class(virq, &irq_nested_lock_class,
          &irq_nested_request_class);

 if (chip->irq_calc_mask)
  chip->irq_calc_mask(data);
 else
  data->mask = 1 << idx;

 irq_domain_set_info(d, virq, hw_irq, chip, gc, ct->handler, ((void*)0), ((void*)0));
 irq_modify_status(virq, dgc->irq_flags_to_clear, dgc->irq_flags_to_set);
 return 0;
}
