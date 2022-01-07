
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int* map; } ;


 scalar_t__ WARN_ONCE (int,char*) ;
 int cpu_map__get_core_id (int) ;
 int cpu_map__get_die (struct perf_cpu_map*,int,void*) ;

int cpu_map__get_core(struct perf_cpu_map *map, int idx, void *data)
{
 int cpu, s_die;

 if (idx > map->nr)
  return -1;

 cpu = map->map[idx];

 cpu = cpu_map__get_core_id(cpu);


 s_die = cpu_map__get_die(map, idx, data);
 if (s_die == -1)
  return -1;
 if (WARN_ONCE(cpu >> 16, "The core id number is too big.\n"))
  return -1;

 return (s_die << 16) | (cpu & 0xffff);
}
