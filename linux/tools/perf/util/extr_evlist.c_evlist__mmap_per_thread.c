
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmap_params {int auxtrace_mp; } ;
struct TYPE_2__ {int threads; } ;
struct evlist {TYPE_1__ core; } ;


 int auxtrace_mmap_params__set_idx (int *,struct evlist*,int,int) ;
 scalar_t__ evlist__mmap_per_evsel (struct evlist*,int,struct mmap_params*,int ,int,int*,int*) ;
 int evlist__munmap_nofree (struct evlist*) ;
 int perf_thread_map__nr (int ) ;
 int pr_debug2 (char*) ;

__attribute__((used)) static int evlist__mmap_per_thread(struct evlist *evlist,
     struct mmap_params *mp)
{
 int thread;
 int nr_threads = perf_thread_map__nr(evlist->core.threads);

 pr_debug2("perf event ring buffer mmapped per thread\n");
 for (thread = 0; thread < nr_threads; thread++) {
  int output = -1;
  int output_overwrite = -1;

  auxtrace_mmap_params__set_idx(&mp->auxtrace_mp, evlist, thread,
           0);

  if (evlist__mmap_per_evsel(evlist, thread, mp, 0, thread,
      &output, &output_overwrite))
   goto out_unmap;
 }

 return 0;

out_unmap:
 evlist__munmap_nofree(evlist);
 return -1;
}
