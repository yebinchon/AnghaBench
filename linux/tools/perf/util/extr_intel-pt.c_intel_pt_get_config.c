
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event_attr {scalar_t__ type; int config; } ;
struct intel_pt {scalar_t__ pmu_type; } ;



__attribute__((used)) static bool intel_pt_get_config(struct intel_pt *pt,
    struct perf_event_attr *attr, u64 *config)
{
 if (attr->type == pt->pmu_type) {
  if (config)
   *config = attr->config;
  return 1;
 }

 return 0;
}
