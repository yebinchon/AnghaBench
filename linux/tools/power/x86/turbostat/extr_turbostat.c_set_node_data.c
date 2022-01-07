
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int logical_node_id; int physical_package_id; int physical_node_id; } ;
struct TYPE_3__ {int max_cpu_num; int num_packages; int nodes_per_pkg; } ;


 TYPE_2__* cpus ;
 TYPE_1__ topo ;

void set_node_data(void)
{
 int pkg, node, lnode, cpu, cpux;
 int cpu_count;


 for (cpu = 0; cpu <= topo.max_cpu_num; ++cpu)
  cpus[cpu].logical_node_id = -1;

 cpu_count = 0;
 for (pkg = 0; pkg < topo.num_packages; pkg++) {
  lnode = 0;
  for (cpu = 0; cpu <= topo.max_cpu_num; ++cpu) {
   if (cpus[cpu].physical_package_id != pkg)
    continue;

   if (cpus[cpu].logical_node_id != -1)
    continue;
   cpus[cpu].logical_node_id = lnode;
   node = cpus[cpu].physical_node_id;
   cpu_count++;




   for (cpux = cpu; cpux <= topo.max_cpu_num; cpux++) {
    if ((cpus[cpux].physical_package_id == pkg) &&
       (cpus[cpux].physical_node_id == node)) {
     cpus[cpux].logical_node_id = lnode;
     cpu_count++;
    }
   }
   lnode++;
   if (lnode > topo.nodes_per_pkg)
    topo.nodes_per_pkg = lnode;
  }
  if (cpu_count >= topo.max_cpu_num)
   break;
 }
}
