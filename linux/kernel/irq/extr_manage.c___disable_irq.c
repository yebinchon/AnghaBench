
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int depth; } ;


 int irq_disable (struct irq_desc*) ;

void __disable_irq(struct irq_desc *desc)
{
 if (!desc->depth++)
  irq_disable(desc);
}
