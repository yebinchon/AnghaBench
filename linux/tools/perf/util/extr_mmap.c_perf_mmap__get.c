
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; } ;
struct mmap {TYPE_1__ core; } ;


 int refcount_inc (int *) ;

void perf_mmap__get(struct mmap *map)
{
 refcount_inc(&map->core.refcnt);
}
