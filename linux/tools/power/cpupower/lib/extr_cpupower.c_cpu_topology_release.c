
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpupower_topology {int core_info; } ;


 int free (int ) ;

void cpu_topology_release(struct cpupower_topology cpu_top)
{
 free(cpu_top.core_info);
}
