
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int refcnt; int prev; int overwrite; } ;
struct mmap {TYPE_1__ core; } ;


 scalar_t__ perf_mmap__empty (struct mmap*) ;
 int perf_mmap__put (struct mmap*) ;
 int perf_mmap__write_tail (struct mmap*,int ) ;
 int refcount_read (int *) ;

void perf_mmap__consume(struct mmap *map)
{
 if (!map->core.overwrite) {
  u64 old = map->core.prev;

  perf_mmap__write_tail(map, old);
 }

 if (refcount_read(&map->core.refcnt) == 1 && perf_mmap__empty(map))
  perf_mmap__put(map);
}
