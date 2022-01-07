
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_data; } ;


 int irq_domain_deactivate_irq (int *) ;
 int irq_shutdown (struct irq_desc*) ;

void irq_shutdown_and_deactivate(struct irq_desc *desc)
{
 irq_shutdown(desc);






 irq_domain_deactivate_irq(&desc->irq_data);
}
