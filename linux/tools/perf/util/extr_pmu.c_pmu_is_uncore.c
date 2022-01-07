
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;


 char* CPUS_TEMPLATE_UNCORE ;
 int PATH_MAX ;
 struct perf_cpu_map* __pmu_cpumask (char*) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 char* sysfs__mountpoint () ;

__attribute__((used)) static bool pmu_is_uncore(const char *name)
{
 char path[PATH_MAX];
 struct perf_cpu_map *cpus;
 const char *sysfs = sysfs__mountpoint();

 snprintf(path, PATH_MAX, CPUS_TEMPLATE_UNCORE, sysfs, name);
 cpus = __pmu_cpumask(path);
 perf_cpu_map__put(cpus);

 return !!cpus;
}
