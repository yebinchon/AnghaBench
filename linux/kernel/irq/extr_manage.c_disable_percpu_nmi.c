
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_percpu_irq (unsigned int) ;

void disable_percpu_nmi(unsigned int irq)
{
 disable_percpu_irq(irq);
}
