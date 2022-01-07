
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct irq_desc {TYPE_1__ irq_data; } ;
typedef int irqreturn_t ;


 int __handle_irq_event_percpu (struct irq_desc*,unsigned int*) ;
 int add_interrupt_randomness (int ,unsigned int) ;
 int noirqdebug ;
 int note_interrupt (struct irq_desc*,int ) ;

irqreturn_t handle_irq_event_percpu(struct irq_desc *desc)
{
 irqreturn_t retval;
 unsigned int flags = 0;

 retval = __handle_irq_event_percpu(desc, &flags);

 add_interrupt_randomness(desc->irq_data.irq, flags);

 if (!noirqdebug)
  note_interrupt(desc, retval);
 return retval;
}
