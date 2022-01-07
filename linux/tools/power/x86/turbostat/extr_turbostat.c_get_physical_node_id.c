
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_topology {int logical_cpu_id; } ;
struct TYPE_2__ {int max_cpu_num; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int sprintf (char*,char*,int,int) ;
 TYPE_1__ topo ;

int get_physical_node_id(struct cpu_topology *thiscpu)
{
 char path[80];
 FILE *filep;
 int i;
 int cpu = thiscpu->logical_cpu_id;

 for (i = 0; i <= topo.max_cpu_num; i++) {
  sprintf(path, "/sys/devices/system/cpu/cpu%d/node%i/cpulist",
   cpu, i);
  filep = fopen(path, "r");
  if (!filep)
   continue;
  fclose(filep);
  return i;
 }
 return -1;
}
