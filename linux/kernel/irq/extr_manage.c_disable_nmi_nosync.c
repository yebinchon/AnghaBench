
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_irq_nosync (unsigned int) ;

void disable_nmi_nosync(unsigned int irq)
{
 disable_irq_nosync(irq);
}
