
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_pmu {int name; } ;
struct evlist {int dummy; } ;


 int intel_pt_read_config (struct perf_pmu*,char*,struct evlist*,int*) ;
 int perf_pmu__scan_file (struct perf_pmu*,char*,char*,int*) ;
 int pr_debug2 (char*,int ,size_t) ;

__attribute__((used)) static size_t intel_pt_psb_period(struct perf_pmu *intel_pt_pmu,
      struct evlist *evlist)
{
 u64 val;
 int err, topa_multiple_entries;
 size_t psb_period;

 if (perf_pmu__scan_file(intel_pt_pmu, "caps/topa_multiple_entries",
    "%d", &topa_multiple_entries) != 1)
  topa_multiple_entries = 0;





 if (!topa_multiple_entries) {
  psb_period = 256;
  goto out;
 }

 err = intel_pt_read_config(intel_pt_pmu, "psb_period", evlist, &val);
 if (err)
  val = 0;

 psb_period = 1 << (val + 11);
out:
 pr_debug2("%s psb_period %zu\n", intel_pt_pmu->name, psb_period);
 return psb_period;
}
