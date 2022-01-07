
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {TYPE_1__* common; int domain; } ;
struct cpumask {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {unsigned int ipi_offset; } ;


 int INVALID_HWIRQ ;
 int cpumask_test_cpu (unsigned int,struct cpumask*) ;
 struct cpumask* irq_data_get_affinity_mask (struct irq_data*) ;
 scalar_t__ irq_domain_is_ipi_per_cpu (int ) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 int irqd_to_hwirq (struct irq_data*) ;
 unsigned int nr_cpu_ids ;

irq_hw_number_t ipi_get_hwirq(unsigned int irq, unsigned int cpu)
{
 struct irq_data *data = irq_get_irq_data(irq);
 struct cpumask *ipimask = data ? irq_data_get_affinity_mask(data) : ((void*)0);

 if (!data || !ipimask || cpu >= nr_cpu_ids)
  return INVALID_HWIRQ;

 if (!cpumask_test_cpu(cpu, ipimask))
  return INVALID_HWIRQ;







 if (irq_domain_is_ipi_per_cpu(data->domain))
  data = irq_get_irq_data(irq + cpu - data->common->ipi_offset);

 return data ? irqd_to_hwirq(data) : INVALID_HWIRQ;
}
