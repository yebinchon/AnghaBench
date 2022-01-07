
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idle_cpu (int) ;
 scalar_t__ vcpu_is_preempted (int) ;

int available_idle_cpu(int cpu)
{
 if (!idle_cpu(cpu))
  return 0;

 if (vcpu_is_preempted(cpu))
  return 0;

 return 1;
}
