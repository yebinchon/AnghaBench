
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu {int cpus; } ;
struct cpu_map {int nr; } ;


 int STR_LEN ;
 struct cpu_map* cpu_map__get (int ) ;
 int cpu_map__put (struct cpu_map*) ;
 char* malloc (int ) ;
 int sprintf (char*,char*,int) ;
 char* sysfs__mountpoint () ;

char *get_cpuid_str(struct perf_pmu *pmu)
{

 char *buf = ((void*)0);
 struct cpu_map *cpus;
 const char *sysfs = sysfs__mountpoint();

 if (!sysfs || !pmu || !pmu->cpus)
  return ((void*)0);

 buf = malloc(STR_LEN);
 if (!buf)
  return ((void*)0);

 cpus = cpu_map__get(pmu->cpus);
 sprintf(buf, "0x%x", cpus->nr - 1);
 cpu_map__put(cpus);
 return buf;
}
