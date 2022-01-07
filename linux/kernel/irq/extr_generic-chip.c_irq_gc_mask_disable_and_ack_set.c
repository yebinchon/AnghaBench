
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {int mask; } ;
struct TYPE_2__ {int ack; int disable; } ;
struct irq_chip_type {TYPE_1__ regs; int * mask_cache; } ;
struct irq_chip_generic {int dummy; } ;


 struct irq_chip_type* irq_data_get_chip_type (struct irq_data*) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 int irq_reg_writel (struct irq_chip_generic*,int ,int ) ;

void irq_gc_mask_disable_and_ack_set(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct irq_chip_type *ct = irq_data_get_chip_type(d);
 u32 mask = d->mask;

 irq_gc_lock(gc);
 irq_reg_writel(gc, mask, ct->regs.disable);
 *ct->mask_cache &= ~mask;
 irq_reg_writel(gc, mask, ct->regs.ack);
 irq_gc_unlock(gc);
}
