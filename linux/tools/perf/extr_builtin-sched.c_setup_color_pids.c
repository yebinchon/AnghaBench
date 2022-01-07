
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_thread_map {int dummy; } ;
struct TYPE_2__ {struct perf_thread_map* color_pids; int color_pids_str; } ;
struct perf_sched {TYPE_1__ map; } ;


 int pr_err (char*,int ) ;
 struct perf_thread_map* thread_map__new_by_tid_str (int ) ;

__attribute__((used)) static int setup_color_pids(struct perf_sched *sched)
{
 struct perf_thread_map *map;

 if (!sched->map.color_pids_str)
  return 0;

 map = thread_map__new_by_tid_str(sched->map.color_pids_str);
 if (!map) {
  pr_err("failed to get thread map from %s\n", sched->map.color_pids_str);
  return -1;
 }

 sched->map.color_pids = map;
 return 0;
}
