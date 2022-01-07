
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pkg_ctdp_level_info {int core_cpumask; int core_cpumask_size; scalar_t__ cpu_count; } ;


 scalar_t__ CPU_ISSET_S (int,int ,int ) ;
 int alloc_cpu_set (int *) ;
 scalar_t__ force_online_offline ;
 int fprintf (int ,char*,...) ;
 int get_physical_die_id (int) ;
 int get_physical_package_id (int) ;
 int get_topo_max_cpus () ;
 int isst_display_result (int,int ,char*,char*,int) ;
 int isst_get_coremask_info (int,int ,struct isst_pkg_ctdp_level_info*) ;
 int isst_set_tdp_level (int,int ) ;
 int outf ;
 int perror (char*) ;
 int set_cpu_online_offline (int,int) ;
 int stderr ;
 int tdp_level ;

__attribute__((used)) static void set_tdp_level_for_cpu(int cpu, void *arg1, void *arg2, void *arg3,
      void *arg4)
{
 int ret;

 ret = isst_set_tdp_level(cpu, tdp_level);
 if (ret)
  perror("set_tdp_level_for_cpu");
 else {
  isst_display_result(cpu, outf, "perf-profile", "set_tdp_level",
        ret);
  if (force_online_offline) {
   struct isst_pkg_ctdp_level_info ctdp_level;
   int pkg_id = get_physical_package_id(cpu);
   int die_id = get_physical_die_id(cpu);

   fprintf(stderr, "Option is set to online/offline\n");
   ctdp_level.core_cpumask_size =
    alloc_cpu_set(&ctdp_level.core_cpumask);
   isst_get_coremask_info(cpu, tdp_level, &ctdp_level);
   if (ctdp_level.cpu_count) {
    int i, max_cpus = get_topo_max_cpus();
    for (i = 0; i < max_cpus; ++i) {
     if (pkg_id != get_physical_package_id(i) || die_id != get_physical_die_id(i))
      continue;
     if (CPU_ISSET_S(i, ctdp_level.core_cpumask_size, ctdp_level.core_cpumask)) {
      fprintf(stderr, "online cpu %d\n", i);
      set_cpu_online_offline(i, 1);
     } else {
      fprintf(stderr, "offline cpu %d\n", i);
      set_cpu_online_offline(i, 0);
     }
    }
   }
  }
 }
}
