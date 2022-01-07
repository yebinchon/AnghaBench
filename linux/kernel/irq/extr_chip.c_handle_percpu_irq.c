
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_data; } ;
struct irq_chip {int (* irq_eoi ) (int *) ;int (* irq_ack ) (int *) ;} ;


 int __kstat_incr_irqs_this_cpu (struct irq_desc*) ;
 int handle_irq_event_percpu (struct irq_desc*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

void handle_percpu_irq(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);





 __kstat_incr_irqs_this_cpu(desc);

 if (chip->irq_ack)
  chip->irq_ack(&desc->irq_data);

 handle_irq_event_percpu(desc);

 if (chip->irq_eoi)
  chip->irq_eoi(&desc->irq_data);
}
