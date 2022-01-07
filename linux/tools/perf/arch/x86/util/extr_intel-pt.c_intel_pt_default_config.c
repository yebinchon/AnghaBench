
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_pmu {int format; int name; } ;
typedef int buf ;


 int intel_pt_parse_terms (int *,char*,int *) ;
 int intel_pt_pick_bit (int,int) ;
 int perf_pmu__scan_file (struct perf_pmu*,char*,char*,...) ;
 int pr_debug2 (char*,int ,char*) ;
 scalar_t__ scnprintf (char*,int,char*,...) ;

__attribute__((used)) static u64 intel_pt_default_config(struct perf_pmu *intel_pt_pmu)
{
 char buf[256];
 int mtc, mtc_periods = 0, mtc_period;
 int psb_cyc, psb_periods, psb_period;
 int pos = 0;
 u64 config;
 char c;

 pos += scnprintf(buf + pos, sizeof(buf) - pos, "tsc");

 if (perf_pmu__scan_file(intel_pt_pmu, "caps/mtc", "%d",
    &mtc) != 1)
  mtc = 1;

 if (mtc) {
  if (perf_pmu__scan_file(intel_pt_pmu, "caps/mtc_periods", "%x",
     &mtc_periods) != 1)
   mtc_periods = 0;
  if (mtc_periods) {
   mtc_period = intel_pt_pick_bit(mtc_periods, 3);
   pos += scnprintf(buf + pos, sizeof(buf) - pos,
      ",mtc,mtc_period=%d", mtc_period);
  }
 }

 if (perf_pmu__scan_file(intel_pt_pmu, "caps/psb_cyc", "%d",
    &psb_cyc) != 1)
  psb_cyc = 1;

 if (psb_cyc && mtc_periods) {
  if (perf_pmu__scan_file(intel_pt_pmu, "caps/psb_periods", "%x",
     &psb_periods) != 1)
   psb_periods = 0;
  if (psb_periods) {
   psb_period = intel_pt_pick_bit(psb_periods, 3);
   pos += scnprintf(buf + pos, sizeof(buf) - pos,
      ",psb_period=%d", psb_period);
  }
 }

 if (perf_pmu__scan_file(intel_pt_pmu, "format/pt", "%c", &c) == 1 &&
     perf_pmu__scan_file(intel_pt_pmu, "format/branch", "%c", &c) == 1)
  pos += scnprintf(buf + pos, sizeof(buf) - pos, ",pt,branch");

 pr_debug2("%s default config: %s\n", intel_pt_pmu->name, buf);

 intel_pt_parse_terms(&intel_pt_pmu->format, buf, &config);

 return config;
}
