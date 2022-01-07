
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct perf_stat {int maps_allocated; int threads; int cpus; } ;
struct TYPE_3__ {int core; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ WARN_ONCE (int,char*) ;
 TYPE_1__* evsel_list ;
 scalar_t__ perf_evlist__alloc_stats (TYPE_1__*,int) ;
 int perf_evlist__set_maps (int *,int ,int ) ;

__attribute__((used)) static int set_maps(struct perf_stat *st)
{
 if (!st->cpus || !st->threads)
  return 0;

 if (WARN_ONCE(st->maps_allocated, "stats double allocation\n"))
  return -EINVAL;

 perf_evlist__set_maps(&evsel_list->core, st->cpus, st->threads);

 if (perf_evlist__alloc_stats(evsel_list, 1))
  return -ENOMEM;

 st->maps_allocated = 1;
 return 0;
}
