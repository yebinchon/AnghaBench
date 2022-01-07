
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int EINVAL ;
 int IRQ_GET_DESC_CHECK_GLOBAL ;
 int __irq_set_trigger (struct irq_desc*,unsigned int) ;
 struct irq_desc* irq_get_desc_buslock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_busunlock (struct irq_desc*,unsigned long) ;

int irq_set_irq_type(unsigned int irq, unsigned int type)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_buslock(irq, &flags, IRQ_GET_DESC_CHECK_GLOBAL);
 int ret = 0;

 if (!desc)
  return -EINVAL;

 ret = __irq_set_trigger(desc, type);
 irq_put_desc_busunlock(desc, flags);
 return ret;
}
