
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int core_cpumask; } ;
struct isst_pkg_ctdp_level_info {int core_cpumask; TYPE_1__ pbf_info; scalar_t__ pbf_support; } ;
struct isst_pkg_ctdp {int levels; struct isst_pkg_ctdp_level_info* ctdp_level; int processed; } ;


 int free_cpu_set (int ) ;

void isst_get_process_ctdp_complete(int cpu, struct isst_pkg_ctdp *pkg_dev)
{
 int i;

 if (!pkg_dev->processed)
  return;

 for (i = 0; i < pkg_dev->levels; ++i) {
  struct isst_pkg_ctdp_level_info *ctdp_level;

  ctdp_level = &pkg_dev->ctdp_level[i];
  if (ctdp_level->pbf_support)
   free_cpu_set(ctdp_level->pbf_info.core_cpumask);
  free_cpu_set(ctdp_level->core_cpumask);
 }
}
