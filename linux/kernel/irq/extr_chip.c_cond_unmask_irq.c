
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int threads_oneshot; int irq_data; } ;


 int irqd_irq_disabled (int *) ;
 scalar_t__ irqd_irq_masked (int *) ;
 int unmask_irq (struct irq_desc*) ;

__attribute__((used)) static void cond_unmask_irq(struct irq_desc *desc)
{







 if (!irqd_irq_disabled(&desc->irq_data) &&
     irqd_irq_masked(&desc->irq_data) && !desc->threads_oneshot)
  unmask_irq(desc);
}
