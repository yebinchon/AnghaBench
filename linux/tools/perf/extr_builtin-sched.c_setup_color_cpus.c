
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct perf_cpu_map* color_cpus; int color_cpus_str; } ;
struct perf_sched {TYPE_1__ map; } ;
struct perf_cpu_map {int dummy; } ;


 struct perf_cpu_map* perf_cpu_map__new (int ) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int setup_color_cpus(struct perf_sched *sched)
{
 struct perf_cpu_map *map;

 if (!sched->map.color_cpus_str)
  return 0;

 map = perf_cpu_map__new(sched->map.color_cpus_str);
 if (!map) {
  pr_err("failed to get thread map from %s\n", sched->map.color_cpus_str);
  return -1;
 }

 sched->map.color_cpus = map;
 return 0;
}
