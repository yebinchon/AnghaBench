
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpupower_topology {scalar_t__ pkgs; TYPE_1__* core_info; scalar_t__ cores; } ;
struct cpuid_core_info {int dummy; } ;
struct TYPE_3__ {int cpu; int pkg; int core; int is_online; } ;


 int ENOMEM ;
 int _SC_NPROCESSORS_CONF ;
 int __compare ;
 int cpupower_is_cpu_online (int) ;
 TYPE_1__* malloc (int) ;
 int qsort (TYPE_1__*,int,int,int ) ;
 int sysconf (int ) ;
 scalar_t__ sysfs_topology_read_file (int,char*,int*) ;

int get_cpu_topology(struct cpupower_topology *cpu_top)
{
 int cpu, last_pkg, cpus = sysconf(_SC_NPROCESSORS_CONF);

 cpu_top->core_info = malloc(sizeof(struct cpuid_core_info) * cpus);
 if (cpu_top->core_info == ((void*)0))
  return -ENOMEM;
 cpu_top->pkgs = cpu_top->cores = 0;
 for (cpu = 0; cpu < cpus; cpu++) {
  cpu_top->core_info[cpu].cpu = cpu;
  cpu_top->core_info[cpu].is_online = cpupower_is_cpu_online(cpu);
  if(sysfs_topology_read_file(
   cpu,
   "physical_package_id",
   &(cpu_top->core_info[cpu].pkg)) < 0) {
   cpu_top->core_info[cpu].pkg = -1;
   cpu_top->core_info[cpu].core = -1;
   continue;
  }
  if(sysfs_topology_read_file(
   cpu,
   "core_id",
   &(cpu_top->core_info[cpu].core)) < 0) {
   cpu_top->core_info[cpu].pkg = -1;
   cpu_top->core_info[cpu].core = -1;
   continue;
  }
 }

 qsort(cpu_top->core_info, cpus, sizeof(struct cpuid_core_info),
       __compare);




 last_pkg = cpu_top->core_info[0].pkg;
 for(cpu = 1; cpu < cpus; cpu++) {
  if (cpu_top->core_info[cpu].pkg != last_pkg &&
    cpu_top->core_info[cpu].pkg != -1) {

   last_pkg = cpu_top->core_info[cpu].pkg;
   cpu_top->pkgs++;
  }
 }
 if (!(cpu_top->core_info[0].pkg == -1))
  cpu_top->pkgs++;
 return cpus;
}
