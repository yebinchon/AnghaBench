
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_thread_map {TYPE_1__* map; } ;
typedef int pid_t ;
struct TYPE_2__ {int pid; } ;



pid_t perf_thread_map__pid(struct perf_thread_map *map, int thread)
{
 return map->map[thread].pid;
}
