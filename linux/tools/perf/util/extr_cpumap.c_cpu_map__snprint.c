
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int* map; } ;


 char* COMMA ;
 int INT_MAX ;
 int pr_debug2 (char*,char*) ;
 scalar_t__ snprintf (char*,size_t,char*,char*,int,...) ;

size_t cpu_map__snprint(struct perf_cpu_map *map, char *buf, size_t size)
{
 int i, cpu, start = -1;
 bool first = 1;
 size_t ret = 0;



 for (i = 0; i < map->nr + 1; i++) {
  bool last = i == map->nr;

  cpu = last ? INT_MAX : map->map[i];

  if (start == -1) {
   start = i;
   if (last) {
    ret += snprintf(buf + ret, size - ret,
      "%s%d", first ? "" : ",",
      map->map[i]);
   }
  } else if (((i - start) != (cpu - map->map[start])) || last) {
   int end = i - 1;

   if (start == end) {
    ret += snprintf(buf + ret, size - ret,
      "%s%d", first ? "" : ",",
      map->map[start]);
   } else {
    ret += snprintf(buf + ret, size - ret,
      "%s%d-%d", first ? "" : ",",
      map->map[start], map->map[end]);
   }
   first = 0;
   start = i;
  }
 }



 pr_debug2("cpumask list: %s\n", buf);
 return ret;
}
