
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct irq_data {unsigned int irq; TYPE_1__* common; int domain; } ;
struct irq_chip {int (* ipi_send_single ) (struct irq_data*,unsigned int) ;int (* ipi_send_mask ) (struct irq_data*,int ) ;} ;
struct TYPE_2__ {unsigned int ipi_offset; } ;


 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int cpumask_of (unsigned int) ;
 int ipi_send_verify (struct irq_chip*,struct irq_data*,int *,unsigned int) ;
 struct irq_chip* irq_data_get_irq_chip (struct irq_data*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 scalar_t__ irq_domain_is_ipi_per_cpu (int ) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 int stub1 (struct irq_data*,int ) ;
 int stub2 (struct irq_data*,unsigned int) ;

int __ipi_send_single(struct irq_desc *desc, unsigned int cpu)
{
 struct irq_data *data = irq_desc_get_irq_data(desc);
 struct irq_chip *chip = irq_data_get_irq_chip(data);
 if (!chip->ipi_send_single) {
  chip->ipi_send_mask(data, cpumask_of(cpu));
  return 0;
 }


 if (irq_domain_is_ipi_per_cpu(data->domain) &&
     cpu != data->common->ipi_offset) {

  unsigned irq = data->irq + cpu - data->common->ipi_offset;

  data = irq_get_irq_data(irq);
 }
 chip->ipi_send_single(data, cpu);
 return 0;
}
