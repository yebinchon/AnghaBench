
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;
struct irq_chip {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int __ipi_send_single (struct irq_desc*,unsigned int) ;
 int ipi_send_verify (struct irq_chip*,struct irq_data*,int *,unsigned int) ;
 struct irq_chip* irq_data_get_irq_chip (struct irq_data*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;

int ipi_send_single(unsigned int virq, unsigned int cpu)
{
 struct irq_desc *desc = irq_to_desc(virq);
 struct irq_data *data = desc ? irq_desc_get_irq_data(desc) : ((void*)0);
 struct irq_chip *chip = data ? irq_data_get_irq_chip(data) : ((void*)0);

 if (WARN_ON_ONCE(ipi_send_verify(chip, data, ((void*)0), cpu)))
  return -EINVAL;

 return __ipi_send_single(desc, cpu);
}
