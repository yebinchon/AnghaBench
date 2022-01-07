
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_fwspec {int * param; int param_count; int fwnode; } ;
struct irq_domain {TYPE_1__* ops; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int (* translate ) (struct irq_domain*,struct irq_fwspec*,int *,unsigned int*) ;int (* xlate ) (struct irq_domain*,int ,int *,int ,int *,unsigned int*) ;} ;


 int stub1 (struct irq_domain*,struct irq_fwspec*,int *,unsigned int*) ;
 int stub2 (struct irq_domain*,int ,int *,int ,int *,unsigned int*) ;
 int to_of_node (int ) ;

__attribute__((used)) static int irq_domain_translate(struct irq_domain *d,
    struct irq_fwspec *fwspec,
    irq_hw_number_t *hwirq, unsigned int *type)
{




 if (d->ops->xlate)
  return d->ops->xlate(d, to_of_node(fwspec->fwnode),
         fwspec->param, fwspec->param_count,
         hwirq, type);


 *hwirq = fwspec->param[0];
 return 0;
}
