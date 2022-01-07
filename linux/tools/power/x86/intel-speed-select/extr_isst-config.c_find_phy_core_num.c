
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int punit_cpu_core; } ;


 int EINVAL ;
 TYPE_1__* cpu_map ;
 int topo_max_cpus ;

int find_phy_core_num(int logical_cpu)
{
 if (logical_cpu < topo_max_cpus)
  return cpu_map[logical_cpu].punit_cpu_core;

 return -EINVAL;
}
