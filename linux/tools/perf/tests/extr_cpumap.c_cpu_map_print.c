
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;
typedef int buf ;


 int cpu_map__snprint (struct perf_cpu_map*,char*,int) ;
 struct perf_cpu_map* perf_cpu_map__new (char const*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int cpu_map_print(const char *str)
{
 struct perf_cpu_map *map = perf_cpu_map__new(str);
 char buf[100];

 if (!map)
  return -1;

 cpu_map__snprint(map, buf, sizeof(buf));
 return !strcmp(buf, str);
}
