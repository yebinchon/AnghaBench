
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valid_str ;
typedef int u64 ;
struct perf_pmu {int format; } ;


 int EINVAL ;
 int INTEL_PT_PMU_NAME ;
 int intel_pt_valid_str (char*,int,unsigned long long) ;
 int perf_pmu__format_bits (int *,char const*) ;
 int perf_pmu__scan_file (struct perf_pmu*,char const*,char*,...) ;
 int pr_err (char*,char const*,int ,char*) ;

__attribute__((used)) static int intel_pt_val_config_term(struct perf_pmu *intel_pt_pmu,
        const char *caps, const char *name,
        const char *supported, u64 config)
{
 char valid_str[256];
 unsigned int shift;
 unsigned long long valid;
 u64 bits;
 int ok;

 if (perf_pmu__scan_file(intel_pt_pmu, caps, "%llx", &valid) != 1)
  valid = 0;

 if (supported &&
     perf_pmu__scan_file(intel_pt_pmu, supported, "%d", &ok) == 1 && !ok)
  valid = 0;

 valid |= 1;

 bits = perf_pmu__format_bits(&intel_pt_pmu->format, name);

 config &= bits;

 for (shift = 0; bits && !(bits & 1); shift++)
  bits >>= 1;

 config >>= shift;

 if (config > 63)
  goto out_err;

 if (valid & (1 << config))
  return 0;
out_err:
 intel_pt_valid_str(valid_str, sizeof(valid_str), valid);
 pr_err("Invalid %s for %s. Valid values are: %s\n",
        name, INTEL_PT_PMU_NAME, valid_str);
 return -EINVAL;
}
