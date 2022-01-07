
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 struct perf_cpu_map* perf_cpu_map__read (int *) ;

__attribute__((used)) static struct perf_cpu_map *__pmu_cpumask(const char *path)
{
 FILE *file;
 struct perf_cpu_map *cpus;

 file = fopen(path, "r");
 if (!file)
  return ((void*)0);

 cpus = perf_cpu_map__read(file);
 fclose(file);
 return cpus;
}
