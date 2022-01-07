
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; scalar_t__ base; } ;
struct mmap {TYPE_1__ core; } ;


 int BUG_ON (int) ;
 int perf_mmap__munmap (struct mmap*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 scalar_t__ refcount_read (int *) ;

void perf_mmap__put(struct mmap *map)
{
 BUG_ON(map->core.base && refcount_read(&map->core.refcnt) == 0);

 if (refcount_dec_and_test(&map->core.refcnt))
  perf_mmap__munmap(map);
}
