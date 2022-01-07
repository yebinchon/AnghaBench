
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __disable_irq_nosync (unsigned int) ;
 int synchronize_irq (unsigned int) ;

void disable_irq(unsigned int irq)
{
 if (!__disable_irq_nosync(irq))
  synchronize_irq(irq);
}
