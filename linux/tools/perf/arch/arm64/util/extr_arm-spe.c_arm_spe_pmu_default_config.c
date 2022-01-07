
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu {int selectable; int is_uncore; } ;
struct perf_event_attr {int sample_period; } ;


 int perf_pmu__scan_file (struct perf_pmu*,char*,char*,int*) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 struct perf_event_attr* zalloc (int) ;

struct perf_event_attr
*arm_spe_pmu_default_config(struct perf_pmu *arm_spe_pmu)
{
 struct perf_event_attr *attr;

 attr = zalloc(sizeof(struct perf_event_attr));
 if (!attr) {
  pr_err("arm_spe default config cannot allocate a perf_event_attr\n");
  return ((void*)0);
 }





 if (perf_pmu__scan_file(arm_spe_pmu, "caps/min_interval", "%llu",
      &attr->sample_period) != 1) {
  pr_debug("arm_spe driver doesn't advertise a min. interval. Using 4096\n");
  attr->sample_period = 4096;
 }

 arm_spe_pmu->selectable = 1;
 arm_spe_pmu->is_uncore = 0;

 return attr;
}
