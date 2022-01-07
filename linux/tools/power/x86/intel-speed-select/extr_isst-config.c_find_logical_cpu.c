
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkg_id; int die_id; int punit_cpu_core; } ;


 int EINVAL ;
 TYPE_1__* cpu_map ;
 int topo_max_cpus ;

int find_logical_cpu(int pkg_id, int die_id, int punit_core_id)
{
 int i;

 for (i = 0; i < topo_max_cpus; ++i) {
  if (cpu_map[i].pkg_id == pkg_id &&
      cpu_map[i].die_id == die_id &&
      cpu_map[i].punit_cpu_core == punit_core_id)
   return i;
 }

 return -EINVAL;
}
