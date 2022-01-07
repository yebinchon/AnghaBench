
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int dummy; } ;
struct perf_cpu_map {int dummy; } ;
struct evlist {int core; } ;


 int ENOMEM ;
 struct perf_cpu_map* perf_cpu_map__new (int *) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;
 int perf_evlist__set_maps (int *,struct perf_cpu_map*,struct perf_thread_map*) ;
 struct perf_thread_map* perf_thread_map__new_dummy () ;

__attribute__((used)) static int perf_evlist__create_syswide_maps(struct evlist *evlist)
{
 struct perf_cpu_map *cpus;
 struct perf_thread_map *threads;
 int err = -ENOMEM;
 cpus = perf_cpu_map__new(((void*)0));
 if (!cpus)
  goto out;

 threads = perf_thread_map__new_dummy();
 if (!threads)
  goto out_put;

 perf_evlist__set_maps(&evlist->core, cpus, threads);
out:
 return err;
out_put:
 perf_cpu_map__put(cpus);
 goto out;
}
