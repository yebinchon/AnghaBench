
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __disable_irq_nosync (unsigned int) ;
 int synchronize_hardirq (unsigned int) ;

bool disable_hardirq(unsigned int irq)
{
 if (!__disable_irq_nosync(irq))
  return synchronize_hardirq(irq);

 return 0;
}
