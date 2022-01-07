
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_fwspec {unsigned int param_count; int * param; int * fwnode; } ;
struct device_node {int fwnode; } ;



__attribute__((used)) static void of_phandle_args_to_fwspec(struct device_node *np, const u32 *args,
          unsigned int count,
          struct irq_fwspec *fwspec)
{
 int i;

 fwspec->fwnode = np ? &np->fwnode : ((void*)0);
 fwspec->param_count = count;

 for (i = 0; i < count; i++)
  fwspec->param[i] = args[i];
}
