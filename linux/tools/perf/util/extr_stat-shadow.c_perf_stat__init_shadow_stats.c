
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int have_frontend_stalled ;
 int pmu_have_event (char*,char*) ;
 int rt_stat ;
 int runtime_stat__init (int *) ;

void perf_stat__init_shadow_stats(void)
{
 have_frontend_stalled = pmu_have_event("cpu", "stalled-cycles-frontend");
 runtime_stat__init(&rt_stat);
}
