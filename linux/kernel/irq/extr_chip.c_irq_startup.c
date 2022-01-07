
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {scalar_t__ depth; } ;
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;





 int __irq_startup (struct irq_desc*) ;
 int __irq_startup_managed (struct irq_desc*,struct cpumask*,int) ;
 int check_irq_resend (struct irq_desc*) ;
 struct cpumask* irq_data_get_affinity_mask (struct irq_data*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int irq_do_set_affinity (struct irq_data*,struct cpumask*,int) ;
 int irq_enable (struct irq_desc*) ;
 int irq_setup_affinity (struct irq_desc*) ;
 scalar_t__ irqd_is_started (struct irq_data*) ;
 int irqd_set_managed_shutdown (struct irq_data*) ;

int irq_startup(struct irq_desc *desc, bool resend, bool force)
{
 struct irq_data *d = irq_desc_get_irq_data(desc);
 struct cpumask *aff = irq_data_get_affinity_mask(d);
 int ret = 0;

 desc->depth = 0;

 if (irqd_is_started(d)) {
  irq_enable(desc);
 } else {
  switch (__irq_startup_managed(desc, aff, force)) {
  case 128:
   ret = __irq_startup(desc);
   irq_setup_affinity(desc);
   break;
  case 129:
   irq_do_set_affinity(d, aff, 0);
   ret = __irq_startup(desc);
   break;
  case 130:
   irqd_set_managed_shutdown(d);
   return 0;
  }
 }
 if (resend)
  check_irq_resend(desc);

 return ret;
}
