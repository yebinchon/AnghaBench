
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_data; } ;


 unsigned int IRQD_IRQ_INPROGRESS ;
 unsigned int IRQD_WAKEUP_ARMED ;
 int irq_check_poll (struct irq_desc*) ;
 scalar_t__ irq_pm_check_wakeup (struct irq_desc*) ;
 int irqd_has_set (int *,unsigned int) ;

__attribute__((used)) static bool irq_may_run(struct irq_desc *desc)
{
 unsigned int mask = IRQD_IRQ_INPROGRESS | IRQD_WAKEUP_ARMED;





 if (!irqd_has_set(&desc->irq_data, mask))
  return 1;






 if (irq_pm_check_wakeup(desc))
  return 0;




 return irq_check_poll(desc);
}
