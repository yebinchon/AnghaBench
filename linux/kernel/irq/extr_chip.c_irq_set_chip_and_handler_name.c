
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_chip {int dummy; } ;
typedef int irq_flow_handler_t ;


 int __irq_set_handler (unsigned int,int ,int ,char const*) ;
 int irq_set_chip (unsigned int,struct irq_chip*) ;

void
irq_set_chip_and_handler_name(unsigned int irq, struct irq_chip *chip,
         irq_flow_handler_t handle, const char *name)
{
 irq_set_chip(irq, chip);
 __irq_set_handler(irq, handle, 0, name);
}
