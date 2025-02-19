
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int ack_bad_irq (unsigned int) ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;
 int kstat_incr_irqs_this_cpu (struct irq_desc*) ;
 int print_irq_desc (unsigned int,struct irq_desc*) ;

void handle_bad_irq(struct irq_desc *desc)
{
 unsigned int irq = irq_desc_get_irq(desc);

 print_irq_desc(irq, desc);
 kstat_incr_irqs_this_cpu(desc);
 ack_bad_irq(irq);
}
