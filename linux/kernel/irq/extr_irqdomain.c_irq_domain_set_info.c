
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_chip {int dummy; } ;
typedef int irq_hw_number_t ;
typedef int irq_flow_handler_t ;


 int irq_set_chip_and_handler_name (unsigned int,struct irq_chip*,int ,char const*) ;
 int irq_set_chip_data (unsigned int,void*) ;
 int irq_set_handler_data (unsigned int,void*) ;

void irq_domain_set_info(struct irq_domain *domain, unsigned int virq,
    irq_hw_number_t hwirq, struct irq_chip *chip,
    void *chip_data, irq_flow_handler_t handler,
    void *handler_data, const char *handler_name)
{
 irq_set_chip_and_handler_name(virq, chip, handler, handler_name);
 irq_set_chip_data(virq, chip_data);
 irq_set_handler_data(virq, handler_data);
}
