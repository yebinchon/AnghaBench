
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 int hypervisor_pin_vcpu (int) ;

int smp_call_on_cpu(unsigned int cpu, int (*func)(void *), void *par, bool phys)
{
 int ret;

 if (cpu != 0)
  return -ENXIO;

 if (phys)
  hypervisor_pin_vcpu(0);
 ret = func(par);
 if (phys)
  hypervisor_pin_vcpu(-1);

 return ret;
}
