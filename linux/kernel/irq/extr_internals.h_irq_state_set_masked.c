
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_data; } ;


 int IRQD_IRQ_MASKED ;
 int irqd_set (int *,int ) ;

__attribute__((used)) static inline void irq_state_set_masked(struct irq_desc *desc)
{
 irqd_set(&desc->irq_data, IRQD_IRQ_MASKED);
}
