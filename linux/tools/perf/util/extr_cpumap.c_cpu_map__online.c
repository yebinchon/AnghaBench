
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;


 struct perf_cpu_map* perf_cpu_map__new (int *) ;

const struct perf_cpu_map *cpu_map__online(void)
{
 static const struct perf_cpu_map *online = ((void*)0);

 if (!online)
  online = perf_cpu_map__new(((void*)0));

 return online;
}
