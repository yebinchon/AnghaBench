
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target {int cpu_list; int uid; int tid; int pid; scalar_t__ system_wide; scalar_t__ per_thread; } ;
struct perf_thread_map {int dummy; } ;
struct perf_cpu_map {int dummy; } ;
struct TYPE_2__ {int has_user_cpus; } ;
struct evlist {TYPE_1__ core; } ;


 struct perf_cpu_map* perf_cpu_map__dummy_new () ;
 struct perf_cpu_map* perf_cpu_map__new (int ) ;
 int perf_evlist__set_maps (TYPE_1__*,struct perf_cpu_map*,struct perf_thread_map*) ;
 int perf_thread_map__put (struct perf_thread_map*) ;
 scalar_t__ target__uses_dummy_map (struct target*) ;
 struct perf_thread_map* thread_map__new_str (int ,int ,int ,int) ;

int perf_evlist__create_maps(struct evlist *evlist, struct target *target)
{
 bool all_threads = (target->per_thread && target->system_wide);
 struct perf_cpu_map *cpus;
 struct perf_thread_map *threads;
 threads = thread_map__new_str(target->pid, target->tid, target->uid,
          all_threads);

 if (!threads)
  return -1;

 if (target__uses_dummy_map(target))
  cpus = perf_cpu_map__dummy_new();
 else
  cpus = perf_cpu_map__new(target->cpu_list);

 if (!cpus)
  goto out_delete_threads;

 evlist->core.has_user_cpus = !!target->cpu_list;

 perf_evlist__set_maps(&evlist->core, cpus, threads);

 return 0;

out_delete_threads:
 perf_thread_map__put(threads);
 return -1;
}
