
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t mask; } ;
struct mmap {TYPE_1__ core; } ;


 size_t page_size ;

size_t perf_mmap__mmap_len(struct mmap *map)
{
 return map->core.mask + 1 + page_size;
}
