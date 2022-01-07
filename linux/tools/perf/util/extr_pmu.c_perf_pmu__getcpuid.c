
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu {int dummy; } ;


 char* get_cpuid_str (struct perf_pmu*) ;
 char* getenv (char*) ;
 int pr_debug (char*,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static char *perf_pmu__getcpuid(struct perf_pmu *pmu)
{
 char *cpuid;
 static bool printed;

 cpuid = getenv("PERF_CPUID");
 if (cpuid)
  cpuid = strdup(cpuid);
 if (!cpuid)
  cpuid = get_cpuid_str(pmu);
 if (!cpuid)
  return ((void*)0);

 if (!printed) {
  pr_debug("Using CPUID %s\n", cpuid);
  printed = 1;
 }
 return cpuid;
}
