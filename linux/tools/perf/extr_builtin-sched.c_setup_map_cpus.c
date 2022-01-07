
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct perf_cpu_map* cpus; int cpus_str; int comp_cpus; scalar_t__ comp; } ;
struct perf_sched {int max_cpu; TYPE_1__ map; } ;
struct perf_cpu_map {int dummy; } ;


 int _SC_NPROCESSORS_CONF ;
 struct perf_cpu_map* perf_cpu_map__new (int ) ;
 int pr_err (char*,int ) ;
 int sysconf (int ) ;
 int zalloc (int) ;

__attribute__((used)) static int setup_map_cpus(struct perf_sched *sched)
{
 struct perf_cpu_map *map;

 sched->max_cpu = sysconf(_SC_NPROCESSORS_CONF);

 if (sched->map.comp) {
  sched->map.comp_cpus = zalloc(sched->max_cpu * sizeof(int));
  if (!sched->map.comp_cpus)
   return -1;
 }

 if (!sched->map.cpus_str)
  return 0;

 map = perf_cpu_map__new(sched->map.cpus_str);
 if (!map) {
  pr_err("failed to get cpus map from %s\n", sched->map.cpus_str);
  return -1;
 }

 sched->map.cpus = map;
 return 0;
}
