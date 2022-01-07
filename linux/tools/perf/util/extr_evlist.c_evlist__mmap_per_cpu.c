
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmap_params {int auxtrace_mp; } ;
struct TYPE_2__ {int threads; int cpus; } ;
struct evlist {TYPE_1__ core; } ;


 int auxtrace_mmap_params__set_idx (int *,struct evlist*,int,int) ;
 scalar_t__ evlist__mmap_per_evsel (struct evlist*,int,struct mmap_params*,int,int,int*,int*) ;
 int evlist__munmap_nofree (struct evlist*) ;
 int perf_cpu_map__nr (int ) ;
 int perf_thread_map__nr (int ) ;
 int pr_debug2 (char*) ;

__attribute__((used)) static int evlist__mmap_per_cpu(struct evlist *evlist,
         struct mmap_params *mp)
{
 int cpu, thread;
 int nr_cpus = perf_cpu_map__nr(evlist->core.cpus);
 int nr_threads = perf_thread_map__nr(evlist->core.threads);

 pr_debug2("perf event ring buffer mmapped per cpu\n");
 for (cpu = 0; cpu < nr_cpus; cpu++) {
  int output = -1;
  int output_overwrite = -1;

  auxtrace_mmap_params__set_idx(&mp->auxtrace_mp, evlist, cpu,
           1);

  for (thread = 0; thread < nr_threads; thread++) {
   if (evlist__mmap_per_evsel(evlist, cpu, mp, cpu,
       thread, &output, &output_overwrite))
    goto out_unmap;
  }
 }

 return 0;

out_unmap:
 evlist__munmap_nofree(evlist);
 return -1;
}
