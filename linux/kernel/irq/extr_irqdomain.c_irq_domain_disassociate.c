
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {int mapcount; TYPE_1__* ops; } ;
struct irq_data {scalar_t__ hwirq; struct irq_domain* domain; } ;
typedef scalar_t__ irq_hw_number_t ;
struct TYPE_2__ {int (* unmap ) (struct irq_domain*,unsigned int) ;} ;


 int IRQ_NOREQUEST ;
 scalar_t__ WARN (int,char*,unsigned int) ;
 int irq_domain_clear_mapping (struct irq_domain*,scalar_t__) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 int irq_set_chip_and_handler (unsigned int,int *,int *) ;
 int irq_set_status_flags (unsigned int,int ) ;
 int smp_mb () ;
 int stub1 (struct irq_domain*,unsigned int) ;
 int synchronize_irq (unsigned int) ;

void irq_domain_disassociate(struct irq_domain *domain, unsigned int irq)
{
 struct irq_data *irq_data = irq_get_irq_data(irq);
 irq_hw_number_t hwirq;

 if (WARN(!irq_data || irq_data->domain != domain,
   "virq%i doesn't exist; cannot disassociate\n", irq))
  return;

 hwirq = irq_data->hwirq;
 irq_set_status_flags(irq, IRQ_NOREQUEST);


 irq_set_chip_and_handler(irq, ((void*)0), ((void*)0));


 synchronize_irq(irq);


 if (domain->ops->unmap)
  domain->ops->unmap(domain, irq);
 smp_mb();

 irq_data->domain = ((void*)0);
 irq_data->hwirq = 0;
 domain->mapcount--;


 irq_domain_clear_mapping(domain, hwirq);
}
