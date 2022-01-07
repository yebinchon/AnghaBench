
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_set_percpu_devid_partition (unsigned int,int *) ;

int irq_set_percpu_devid(unsigned int irq)
{
 return irq_set_percpu_devid_partition(irq, ((void*)0));
}
