
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_percpu_irq (unsigned int,unsigned int) ;

void enable_percpu_nmi(unsigned int irq, unsigned int type)
{
 enable_percpu_irq(irq, type);
}
