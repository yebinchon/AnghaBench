
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;
typedef int FILE ;


 struct perf_cpu_map* cpu_map__default_new () ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 struct perf_cpu_map* perf_cpu_map__read (int *) ;

__attribute__((used)) static struct perf_cpu_map *cpu_map__read_all_cpu_map(void)
{
 struct perf_cpu_map *cpus = ((void*)0);
 FILE *onlnf;

 onlnf = fopen("/sys/devices/system/cpu/online", "r");
 if (!onlnf)
  return cpu_map__default_new();

 cpus = perf_cpu_map__read(onlnf);
 fclose(onlnf);
 return cpus;
}
