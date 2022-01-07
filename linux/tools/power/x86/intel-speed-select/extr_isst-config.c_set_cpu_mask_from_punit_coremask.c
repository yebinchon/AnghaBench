
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpu_set_t ;
struct TYPE_2__ {int pkg_id; int die_id; int punit_cpu_core; } ;


 unsigned long long BIT (int) ;
 int CPU_ISSET_S (int,int ,int ) ;
 int CPU_SET_S (int,size_t,int *) ;
 TYPE_1__* cpu_map ;
 int get_physical_die_id (int) ;
 int get_physical_package_id (int) ;
 int present_cpumask ;
 int present_cpumask_size ;
 int topo_max_cpus ;

void set_cpu_mask_from_punit_coremask(int cpu, unsigned long long core_mask,
          size_t core_cpumask_size,
          cpu_set_t *core_cpumask, int *cpu_cnt)
{
 int i, cnt = 0;
 int die_id, pkg_id;

 *cpu_cnt = 0;
 die_id = get_physical_die_id(cpu);
 pkg_id = get_physical_package_id(cpu);

 for (i = 0; i < 64; ++i) {
  if (core_mask & BIT(i)) {
   int j;

   for (j = 0; j < topo_max_cpus; ++j) {
    if (!CPU_ISSET_S(j, present_cpumask_size, present_cpumask))
     continue;

    if (cpu_map[j].pkg_id == pkg_id &&
        cpu_map[j].die_id == die_id &&
        cpu_map[j].punit_cpu_core == i) {
     CPU_SET_S(j, core_cpumask_size,
        core_cpumask);
     ++cnt;
    }
   }
  }
 }

 *cpu_cnt = cnt;
}
