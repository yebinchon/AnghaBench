
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_thread_map {TYPE_1__* map; } ;
typedef int pid_t ;
struct TYPE_2__ {int pid; } ;



void perf_thread_map__set_pid(struct perf_thread_map *map, int thread, pid_t pid)
{
 map->map[thread].pid = pid;
}
