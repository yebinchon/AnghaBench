
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fd; int overwrite; int refcnt; } ;
struct mmap {TYPE_2__ core; } ;
struct TYPE_3__ {int nr_mmaps; int threads; int cpus; } ;
struct evlist {TYPE_1__ core; } ;


 scalar_t__ perf_cpu_map__empty (int ) ;
 int perf_cpu_map__nr (int ) ;
 int perf_thread_map__nr (int ) ;
 int refcount_set (int *,int ) ;
 struct mmap* zalloc (int) ;

__attribute__((used)) static struct mmap *evlist__alloc_mmap(struct evlist *evlist,
           bool overwrite)
{
 int i;
 struct mmap *map;

 evlist->core.nr_mmaps = perf_cpu_map__nr(evlist->core.cpus);
 if (perf_cpu_map__empty(evlist->core.cpus))
  evlist->core.nr_mmaps = perf_thread_map__nr(evlist->core.threads);
 map = zalloc(evlist->core.nr_mmaps * sizeof(struct mmap));
 if (!map)
  return ((void*)0);

 for (i = 0; i < evlist->core.nr_mmaps; i++) {
  map[i].core.fd = -1;
  map[i].core.overwrite = overwrite;
  refcount_set(&map[i].core.refcnt, 0);
 }
 return map;
}
