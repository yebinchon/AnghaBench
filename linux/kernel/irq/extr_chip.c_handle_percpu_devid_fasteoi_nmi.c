
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int percpu_dev_id; int (* handler ) (unsigned int,int ) ;} ;
struct irq_desc {int irq_data; struct irqaction* action; } ;
struct irq_chip {int (* irq_eoi ) (int *) ;} ;
typedef int irqreturn_t ;


 int __kstat_incr_irqs_this_cpu (struct irq_desc*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;
 int raw_cpu_ptr (int ) ;
 int stub1 (unsigned int,int ) ;
 int stub2 (int *) ;
 int trace_irq_handler_entry (unsigned int,struct irqaction*) ;
 int trace_irq_handler_exit (unsigned int,struct irqaction*,int ) ;

void handle_percpu_devid_fasteoi_nmi(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct irqaction *action = desc->action;
 unsigned int irq = irq_desc_get_irq(desc);
 irqreturn_t res;

 __kstat_incr_irqs_this_cpu(desc);

 trace_irq_handler_entry(irq, action);
 res = action->handler(irq, raw_cpu_ptr(action->percpu_dev_id));
 trace_irq_handler_exit(irq, action, res);

 if (chip->irq_eoi)
  chip->irq_eoi(&desc->irq_data);
}
