
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu {int selectable; } ;
struct perf_event_attr {int config; } ;


 int intel_pt_default_config (struct perf_pmu*) ;
 struct perf_event_attr* zalloc (int) ;

struct perf_event_attr *
intel_pt_pmu_default_config(struct perf_pmu *intel_pt_pmu)
{
 struct perf_event_attr *attr;

 attr = zalloc(sizeof(struct perf_event_attr));
 if (!attr)
  return ((void*)0);

 attr->config = intel_pt_default_config(intel_pt_pmu);

 intel_pt_pmu->selectable = 1;

 return attr;
}
