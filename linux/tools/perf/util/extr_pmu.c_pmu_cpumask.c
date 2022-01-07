
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;


 char const* CPUS_TEMPLATE_CPU ;
 char const* CPUS_TEMPLATE_UNCORE ;
 int PATH_MAX ;
 struct perf_cpu_map* __pmu_cpumask (char*) ;
 int snprintf (char*,int,char const*,char const*,char const*) ;
 char* sysfs__mountpoint () ;

__attribute__((used)) static struct perf_cpu_map *pmu_cpumask(const char *name)
{
 char path[PATH_MAX];
 struct perf_cpu_map *cpus;
 const char *sysfs = sysfs__mountpoint();
 const char *templates[] = {
  CPUS_TEMPLATE_UNCORE,
  CPUS_TEMPLATE_CPU,
  ((void*)0)
 };
 const char **template;

 if (!sysfs)
  return ((void*)0);

 for (template = templates; *template; template++) {
  snprintf(path, PATH_MAX, *template, sysfs, name);
  cpus = __pmu_cpumask(path);
  if (cpus)
   return cpus;
 }

 return ((void*)0);
}
