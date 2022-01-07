
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __disable_irq_nosync (unsigned int) ;

void disable_irq_nosync(unsigned int irq)
{
 __disable_irq_nosync(irq);
}
