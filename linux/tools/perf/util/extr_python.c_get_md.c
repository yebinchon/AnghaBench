
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cpu; } ;
struct mmap {TYPE_2__ core; } ;
struct TYPE_3__ {int nr_mmaps; } ;
struct evlist {struct mmap* mmap; TYPE_1__ core; } ;



__attribute__((used)) static struct mmap *get_md(struct evlist *evlist, int cpu)
{
 int i;

 for (i = 0; i < evlist->core.nr_mmaps; i++) {
  struct mmap *md = &evlist->mmap[i];

  if (md->core.cpu == cpu)
   return md;
 }

 return ((void*)0);
}
