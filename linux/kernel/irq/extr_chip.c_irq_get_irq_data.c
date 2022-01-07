
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct irq_desc {struct irq_data irq_data; } ;


 struct irq_desc* irq_to_desc (unsigned int) ;

struct irq_data *irq_get_irq_data(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);

 return desc ? &desc->irq_data : ((void*)0);
}
