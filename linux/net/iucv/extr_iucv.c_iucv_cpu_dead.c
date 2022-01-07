
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** iucv_irq_data ;
 int ** iucv_param ;
 int ** iucv_param_irq ;
 int kfree (int *) ;

__attribute__((used)) static int iucv_cpu_dead(unsigned int cpu)
{
 kfree(iucv_param_irq[cpu]);
 iucv_param_irq[cpu] = ((void*)0);
 kfree(iucv_param[cpu]);
 iucv_param[cpu] = ((void*)0);
 kfree(iucv_irq_data[cpu]);
 iucv_irq_data[cpu] = ((void*)0);
 return 0;
}
