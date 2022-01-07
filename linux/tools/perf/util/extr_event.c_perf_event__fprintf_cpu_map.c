
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
union perf_event {TYPE_1__ cpu_map; } ;
struct perf_cpu_map {int dummy; } ;
typedef int FILE ;


 scalar_t__ cpu_map__fprintf (struct perf_cpu_map*,int *) ;
 struct perf_cpu_map* cpu_map__new_data (int *) ;
 size_t fprintf (int *,char*) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;

size_t perf_event__fprintf_cpu_map(union perf_event *event, FILE *fp)
{
 struct perf_cpu_map *cpus = cpu_map__new_data(&event->cpu_map.data);
 size_t ret;

 ret = fprintf(fp, ": ");

 if (cpus)
  ret += cpu_map__fprintf(cpus, fp);
 else
  ret += fprintf(fp, "failed to get cpumap from event\n");

 perf_cpu_map__put(cpus);
 return ret;
}
