
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu {int dummy; } ;
struct auxtrace_record {int read_finish; int reference; int parse_snapshot_options; int find_snapshot; int snapshot_finish; int snapshot_start; int free; int info_fill; int info_priv_size; int recording_options; } ;
struct intel_pt_recording {struct auxtrace_record itr; struct perf_pmu* intel_pt_pmu; } ;


 int ENOMEM ;
 int INTEL_PT_PMU_NAME ;
 int errno ;
 int intel_pt_find_snapshot ;
 int intel_pt_info_fill ;
 int intel_pt_info_priv_size ;
 int intel_pt_parse_snapshot_options ;
 int intel_pt_read_finish ;
 int intel_pt_recording_free ;
 int intel_pt_recording_options ;
 int intel_pt_reference ;
 int intel_pt_snapshot_finish ;
 int intel_pt_snapshot_start ;
 struct perf_pmu* perf_pmu__find (int ) ;
 scalar_t__ setenv (char*,char*,int) ;
 struct intel_pt_recording* zalloc (int) ;

struct auxtrace_record *intel_pt_recording_init(int *err)
{
 struct perf_pmu *intel_pt_pmu = perf_pmu__find(INTEL_PT_PMU_NAME);
 struct intel_pt_recording *ptr;

 if (!intel_pt_pmu)
  return ((void*)0);

 if (setenv("JITDUMP_USE_ARCH_TIMESTAMP", "1", 1)) {
  *err = -errno;
  return ((void*)0);
 }

 ptr = zalloc(sizeof(struct intel_pt_recording));
 if (!ptr) {
  *err = -ENOMEM;
  return ((void*)0);
 }

 ptr->intel_pt_pmu = intel_pt_pmu;
 ptr->itr.recording_options = intel_pt_recording_options;
 ptr->itr.info_priv_size = intel_pt_info_priv_size;
 ptr->itr.info_fill = intel_pt_info_fill;
 ptr->itr.free = intel_pt_recording_free;
 ptr->itr.snapshot_start = intel_pt_snapshot_start;
 ptr->itr.snapshot_finish = intel_pt_snapshot_finish;
 ptr->itr.find_snapshot = intel_pt_find_snapshot;
 ptr->itr.parse_snapshot_options = intel_pt_parse_snapshot_options;
 ptr->itr.reference = intel_pt_reference;
 ptr->itr.read_finish = intel_pt_read_finish;
 return &ptr->itr;
}
