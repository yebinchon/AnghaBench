
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_fwspec {int dummy; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef int irq_hw_number_t ;


 int irq_domain_translate_twocell (struct irq_domain*,struct irq_fwspec*,int *,unsigned int*) ;
 int of_phandle_args_to_fwspec (struct device_node*,int const*,unsigned int,struct irq_fwspec*) ;

int irq_domain_xlate_twocell(struct irq_domain *d, struct device_node *ctrlr,
   const u32 *intspec, unsigned int intsize,
   irq_hw_number_t *out_hwirq, unsigned int *out_type)
{
 struct irq_fwspec fwspec;

 of_phandle_args_to_fwspec(ctrlr, intspec, intsize, &fwspec);
 return irq_domain_translate_twocell(d, &fwspec, out_hwirq, out_type);
}
