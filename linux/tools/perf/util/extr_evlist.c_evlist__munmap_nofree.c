
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_mmaps; } ;
struct evlist {int * overwrite_mmap; TYPE_1__ core; int * mmap; } ;


 int perf_mmap__munmap (int *) ;

__attribute__((used)) static void evlist__munmap_nofree(struct evlist *evlist)
{
 int i;

 if (evlist->mmap)
  for (i = 0; i < evlist->core.nr_mmaps; i++)
   perf_mmap__munmap(&evlist->mmap[i]);

 if (evlist->overwrite_mmap)
  for (i = 0; i < evlist->core.nr_mmaps; i++)
   perf_mmap__munmap(&evlist->overwrite_mmap[i]);
}
