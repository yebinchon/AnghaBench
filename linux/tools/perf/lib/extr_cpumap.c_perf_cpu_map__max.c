
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int* map; } ;



int perf_cpu_map__max(struct perf_cpu_map *map)
{
 int i, max = -1;

 for (i = 0; i < map->nr; i++) {
  if (map->map[i] > max)
   max = map->map[i];
 }

 return max;
}
