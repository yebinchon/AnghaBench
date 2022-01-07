
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int* map; } ;



bool perf_cpu_map__empty(const struct perf_cpu_map *map)
{
 return map ? map->map[0] == -1 : 1;
}
