
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct TYPE_2__ {int start; int prev; int overwrite; int end; int refcnt; } ;
struct mmap {TYPE_1__ core; } ;


 union perf_event* perf_mmap__read (struct mmap*,int *,int ) ;
 int perf_mmap__read_head (struct mmap*) ;
 int refcount_read (int *) ;

union perf_event *perf_mmap__read_event(struct mmap *map)
{
 union perf_event *event;




 if (!refcount_read(&map->core.refcnt))
  return ((void*)0);


 if (!map->core.overwrite)
  map->core.end = perf_mmap__read_head(map);

 event = perf_mmap__read(map, &map->core.start, map->core.end);

 if (!map->core.overwrite)
  map->core.prev = map->core.start;

 return event;
}
