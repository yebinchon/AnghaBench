
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int EINVAL ;
 int generic_handle_irq_desc (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;

int generic_handle_irq(unsigned int irq)
{
 struct irq_desc *desc = irq_to_desc(irq);

 if (!desc)
  return -EINVAL;
 generic_handle_irq_desc(desc);
 return 0;
}
