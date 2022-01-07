
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_events_map {int cpuid; int table; } ;
struct perf_pmu {int dummy; } ;


 int free (char*) ;
 char* perf_pmu__getcpuid (struct perf_pmu*) ;
 struct pmu_events_map* pmu_events_map ;
 int strcmp_cpuid_str (int ,char*) ;

struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
{
 struct pmu_events_map *map;
 char *cpuid = perf_pmu__getcpuid(pmu);
 int i;




 if (!cpuid)
  return ((void*)0);

 i = 0;
 for (;;) {
  map = &pmu_events_map[i++];
  if (!map->table) {
   map = ((void*)0);
   break;
  }

  if (!strcmp_cpuid_str(map->cpuid, cpuid))
   break;
 }
 free(cpuid);
 return map;
}
