
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_data; } ;


 int IRQD_IRQ_STARTED ;
 int irqd_clear (int *,int ) ;

__attribute__((used)) static void irq_state_clr_started(struct irq_desc *desc)
{
 irqd_clear(&desc->irq_data, IRQD_IRQ_STARTED);
}
