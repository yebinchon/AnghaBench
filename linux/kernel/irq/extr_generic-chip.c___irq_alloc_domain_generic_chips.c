
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain_chip_generic {int irqs_per_chip; int num_chips; unsigned int irq_flags_to_set; unsigned int irq_flags_to_clear; int gc_flags; struct irq_chip_generic** gc; } ;
struct irq_domain {struct irq_domain_chip_generic* gc; int revmap_size; } ;
struct irq_chip_type {int dummy; } ;
struct irq_chip_generic {int list; int * reg_writel; int * reg_readl; struct irq_domain* domain; } ;
typedef int irq_flow_handler_t ;
typedef int gc ;
typedef enum irq_gc_flags { ____Placeholder_irq_gc_flags } irq_gc_flags ;


 int DIV_ROUND_UP (int ,int) ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_GC_BE_IO ;
 int gc_list ;
 int gc_lock ;
 int irq_init_generic_chip (struct irq_chip_generic*,char const*,int,int,int *,int ) ;
 int irq_readl_be ;
 int irq_writel_be ;
 struct irq_domain_chip_generic* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int __irq_alloc_domain_generic_chips(struct irq_domain *d, int irqs_per_chip,
         int num_ct, const char *name,
         irq_flow_handler_t handler,
         unsigned int clr, unsigned int set,
         enum irq_gc_flags gcflags)
{
 struct irq_domain_chip_generic *dgc;
 struct irq_chip_generic *gc;
 int numchips, sz, i;
 unsigned long flags;
 void *tmp;

 if (d->gc)
  return -EBUSY;

 numchips = DIV_ROUND_UP(d->revmap_size, irqs_per_chip);
 if (!numchips)
  return -EINVAL;


 sz = sizeof(*dgc) + numchips * sizeof(gc);
 sz += numchips * (sizeof(*gc) + num_ct * sizeof(struct irq_chip_type));

 tmp = dgc = kzalloc(sz, GFP_KERNEL);
 if (!dgc)
  return -ENOMEM;
 dgc->irqs_per_chip = irqs_per_chip;
 dgc->num_chips = numchips;
 dgc->irq_flags_to_set = set;
 dgc->irq_flags_to_clear = clr;
 dgc->gc_flags = gcflags;
 d->gc = dgc;


 tmp += sizeof(*dgc) + numchips * sizeof(gc);
 for (i = 0; i < numchips; i++) {

  dgc->gc[i] = gc = tmp;
  irq_init_generic_chip(gc, name, num_ct, i * irqs_per_chip,
          ((void*)0), handler);

  gc->domain = d;
  if (gcflags & IRQ_GC_BE_IO) {
   gc->reg_readl = &irq_readl_be;
   gc->reg_writel = &irq_writel_be;
  }

  raw_spin_lock_irqsave(&gc_lock, flags);
  list_add_tail(&gc->list, &gc_list);
  raw_spin_unlock_irqrestore(&gc_lock, flags);

  tmp += sizeof(*gc) + num_ct * sizeof(struct irq_chip_type);
 }
 return 0;
}
