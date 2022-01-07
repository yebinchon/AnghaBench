
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int* map; } ;


 scalar_t__ WARN_ONCE (int,char*) ;
 int cpu_map__get_die_id (int) ;
 int cpu_map__get_socket (struct perf_cpu_map*,int,void*) ;

int cpu_map__get_die(struct perf_cpu_map *map, int idx, void *data)
{
 int cpu, die_id, s;

 if (idx > map->nr)
  return -1;

 cpu = map->map[idx];

 die_id = cpu_map__get_die_id(cpu);

 if (die_id == -1)
  die_id = 0;

 s = cpu_map__get_socket(map, idx, data);
 if (s == -1)
  return -1;







 if (WARN_ONCE(die_id >> 8, "The die id number is too big.\n"))
  return -1;

 if (WARN_ONCE(s >> 8, "The socket id number is too big.\n"))
  return -1;

 return (s << 8) | (die_id & 0xff);
}
