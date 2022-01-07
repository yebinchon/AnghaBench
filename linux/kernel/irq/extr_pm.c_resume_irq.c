
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int istate; int depth; int force_resume_depth; int irq_data; } ;


 int IRQD_WAKEUP_ARMED ;
 int IRQS_SUSPENDED ;
 int __enable_irq (struct irq_desc*) ;
 int irq_state_set_disabled (struct irq_desc*) ;
 int irq_state_set_masked (struct irq_desc*) ;
 int irqd_clear (int *,int ) ;

__attribute__((used)) static void resume_irq(struct irq_desc *desc)
{
 irqd_clear(&desc->irq_data, IRQD_WAKEUP_ARMED);

 if (desc->istate & IRQS_SUSPENDED)
  goto resume;


 if (!desc->force_resume_depth)
  return;


 desc->depth++;
 irq_state_set_disabled(desc);
 irq_state_set_masked(desc);
resume:
 desc->istate &= ~IRQS_SUSPENDED;
 __enable_irq(desc);
}
