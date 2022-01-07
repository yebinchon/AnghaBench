
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct perf_cpu_map {int* map; } ;
struct cpu_map_entries {unsigned int nr; scalar_t__* cpu; } ;


 struct perf_cpu_map* perf_cpu_map__empty_new (unsigned int) ;

__attribute__((used)) static struct perf_cpu_map *cpu_map__from_entries(struct cpu_map_entries *cpus)
{
 struct perf_cpu_map *map;

 map = perf_cpu_map__empty_new(cpus->nr);
 if (map) {
  unsigned i;

  for (i = 0; i < cpus->nr; i++) {





   if (cpus->cpu[i] == (u16) -1)
    map->map[i] = -1;
   else
    map->map[i] = (int) cpus->cpu[i];
  }
 }

 return map;
}
