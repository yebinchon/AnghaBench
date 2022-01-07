
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int mask; } ;
struct irq_chip {int (* irq_calc_mask ) (struct irq_data*) ;} ;
struct irq_chip_type {int handler; struct irq_chip chip; } ;
struct irq_chip_generic {unsigned int irq_base; unsigned int irq_cnt; int list; struct irq_chip_type* chip_types; } ;
typedef enum irq_gc_flags { ____Placeholder_irq_gc_flags } irq_gc_flags ;


 int IRQ_GC_INIT_NESTED_LOCK ;
 int IRQ_GC_NO_MASK ;
 int gc_list ;
 int gc_lock ;
 int irq_gc_init_mask_cache (struct irq_chip_generic*,int) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 int irq_modify_status (unsigned int,unsigned int,unsigned int) ;
 int irq_nested_lock_class ;
 int irq_nested_request_class ;
 int irq_set_chip_and_handler (unsigned int,struct irq_chip*,int ) ;
 int irq_set_chip_data (unsigned int,struct irq_chip_generic*) ;
 int irq_set_lockdep_class (unsigned int,int *,int *) ;
 int list_add_tail (int *,int *) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (struct irq_data*) ;

void irq_setup_generic_chip(struct irq_chip_generic *gc, u32 msk,
       enum irq_gc_flags flags, unsigned int clr,
       unsigned int set)
{
 struct irq_chip_type *ct = gc->chip_types;
 struct irq_chip *chip = &ct->chip;
 unsigned int i;

 raw_spin_lock(&gc_lock);
 list_add_tail(&gc->list, &gc_list);
 raw_spin_unlock(&gc_lock);

 irq_gc_init_mask_cache(gc, flags);

 for (i = gc->irq_base; msk; msk >>= 1, i++) {
  if (!(msk & 0x01))
   continue;

  if (flags & IRQ_GC_INIT_NESTED_LOCK)
   irq_set_lockdep_class(i, &irq_nested_lock_class,
           &irq_nested_request_class);

  if (!(flags & IRQ_GC_NO_MASK)) {
   struct irq_data *d = irq_get_irq_data(i);

   if (chip->irq_calc_mask)
    chip->irq_calc_mask(d);
   else
    d->mask = 1 << (i - gc->irq_base);
  }
  irq_set_chip_and_handler(i, chip, ct->handler);
  irq_set_chip_data(i, gc);
  irq_modify_status(i, clr, set);
 }
 gc->irq_cnt = i - gc->irq_base;
}
