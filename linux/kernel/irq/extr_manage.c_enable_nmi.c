
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_irq (unsigned int) ;

void enable_nmi(unsigned int irq)
{
 enable_irq(irq);
}
