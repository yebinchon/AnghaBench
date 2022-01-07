
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_thread_map {TYPE_1__* map; } ;
struct TYPE_2__ {char* comm; } ;



char *perf_thread_map__comm(struct perf_thread_map *map, int thread)
{
 return map->map[thread].comm;
}
