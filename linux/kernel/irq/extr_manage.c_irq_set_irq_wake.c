
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int istate; scalar_t__ wake_depth; int irq_data; } ;


 int EINVAL ;
 int IRQD_WAKEUP_STATE ;
 int IRQS_NMI ;
 int IRQ_GET_DESC_CHECK_GLOBAL ;
 int WARN (int,char*,unsigned int) ;
 struct irq_desc* irq_get_desc_buslock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_busunlock (struct irq_desc*,unsigned long) ;
 int irqd_clear (int *,int ) ;
 int irqd_set (int *,int ) ;
 int set_irq_wake_real (unsigned int,unsigned int) ;

int irq_set_irq_wake(unsigned int irq, unsigned int on)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_buslock(irq, &flags, IRQ_GET_DESC_CHECK_GLOBAL);
 int ret = 0;

 if (!desc)
  return -EINVAL;


 if (desc->istate & IRQS_NMI) {
  ret = -EINVAL;
  goto out_unlock;
 }




 if (on) {
  if (desc->wake_depth++ == 0) {
   ret = set_irq_wake_real(irq, on);
   if (ret)
    desc->wake_depth = 0;
   else
    irqd_set(&desc->irq_data, IRQD_WAKEUP_STATE);
  }
 } else {
  if (desc->wake_depth == 0) {
   WARN(1, "Unbalanced IRQ %d wake disable\n", irq);
  } else if (--desc->wake_depth == 0) {
   ret = set_irq_wake_real(irq, on);
   if (ret)
    desc->wake_depth = 1;
   else
    irqd_clear(&desc->irq_data, IRQD_WAKEUP_STATE);
  }
 }

out_unlock:
 irq_put_desc_busunlock(desc, flags);
 return ret;
}
