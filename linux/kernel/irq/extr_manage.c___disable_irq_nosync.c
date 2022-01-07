
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int EINVAL ;
 int IRQ_GET_DESC_CHECK_GLOBAL ;
 int __disable_irq (struct irq_desc*) ;
 struct irq_desc* irq_get_desc_buslock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_busunlock (struct irq_desc*,unsigned long) ;

__attribute__((used)) static int __disable_irq_nosync(unsigned int irq)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_buslock(irq, &flags, IRQ_GET_DESC_CHECK_GLOBAL);

 if (!desc)
  return -EINVAL;
 __disable_irq(desc);
 irq_put_desc_busunlock(desc, flags);
 return 0;
}
