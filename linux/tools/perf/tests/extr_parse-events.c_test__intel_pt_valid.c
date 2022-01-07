
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_pmu__find (char*) ;

__attribute__((used)) static bool test__intel_pt_valid(void)
{
 return !!perf_pmu__find("intel_pt");
}
