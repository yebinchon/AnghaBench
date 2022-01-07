
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu_alias {int unit; int snapshot; int per_pkg; int scale; int str; int name; int metric_name; int metric_expr; int topic; int long_desc; int desc; } ;


 int memcpy (int ,int ,int) ;
 int perf_pmu_assign_str (int ,char*,int *,int *) ;

__attribute__((used)) static void perf_pmu_update_alias(struct perf_pmu_alias *old,
      struct perf_pmu_alias *newalias)
{
 perf_pmu_assign_str(old->name, "desc", &old->desc, &newalias->desc);
 perf_pmu_assign_str(old->name, "long_desc", &old->long_desc,
       &newalias->long_desc);
 perf_pmu_assign_str(old->name, "topic", &old->topic, &newalias->topic);
 perf_pmu_assign_str(old->name, "metric_expr", &old->metric_expr,
       &newalias->metric_expr);
 perf_pmu_assign_str(old->name, "metric_name", &old->metric_name,
       &newalias->metric_name);
 perf_pmu_assign_str(old->name, "value", &old->str, &newalias->str);
 old->scale = newalias->scale;
 old->per_pkg = newalias->per_pkg;
 old->snapshot = newalias->snapshot;
 memcpy(old->unit, newalias->unit, sizeof(old->unit));
}
