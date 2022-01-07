
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int istate; } ;


 int IRQS_POLL_INPROGRESS ;
 int irq_wait_for_poll (struct irq_desc*) ;

__attribute__((used)) static bool irq_check_poll(struct irq_desc *desc)
{
 if (!(desc->istate & IRQS_POLL_INPROGRESS))
  return 0;
 return irq_wait_for_poll(desc);
}
