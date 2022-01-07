
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int percpu_dev_id; int (* handler ) (unsigned int,int ) ;} ;
struct irq_desc {int irq_data; int percpu_enabled; struct irqaction* action; } ;
struct irq_chip {int (* irq_eoi ) (int *) ;int (* irq_ack ) (int *) ;} ;
typedef int irqreturn_t ;


 int __kstat_incr_irqs_this_cpu (struct irq_desc*) ;
 int cpumask_test_cpu (unsigned int,int ) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;
 int irq_percpu_disable (struct irq_desc*,unsigned int) ;
 scalar_t__ likely (struct irqaction*) ;
 int pr_err_once (char*,char*,unsigned int,unsigned int) ;
 int raw_cpu_ptr (int ) ;
 unsigned int smp_processor_id () ;
 int stub1 (int *) ;
 int stub2 (unsigned int,int ) ;
 int stub3 (int *) ;
 int trace_irq_handler_entry (unsigned int,struct irqaction*) ;
 int trace_irq_handler_exit (unsigned int,struct irqaction*,int ) ;

void handle_percpu_devid_irq(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct irqaction *action = desc->action;
 unsigned int irq = irq_desc_get_irq(desc);
 irqreturn_t res;





 __kstat_incr_irqs_this_cpu(desc);

 if (chip->irq_ack)
  chip->irq_ack(&desc->irq_data);

 if (likely(action)) {
  trace_irq_handler_entry(irq, action);
  res = action->handler(irq, raw_cpu_ptr(action->percpu_dev_id));
  trace_irq_handler_exit(irq, action, res);
 } else {
  unsigned int cpu = smp_processor_id();
  bool enabled = cpumask_test_cpu(cpu, desc->percpu_enabled);

  if (enabled)
   irq_percpu_disable(desc, cpu);

  pr_err_once("Spurious%s percpu IRQ%u on CPU%u\n",
       enabled ? " and unmasked" : "", irq, cpu);
 }

 if (chip->irq_eoi)
  chip->irq_eoi(&desc->irq_data);
}
