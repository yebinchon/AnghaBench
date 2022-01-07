
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int start_cpu_timer (unsigned int) ;

__attribute__((used)) static int slab_online_cpu(unsigned int cpu)
{
 start_cpu_timer(cpu);
 return 0;
}
