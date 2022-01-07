
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu {int dummy; } ;
struct auxtrace_record {scalar_t__ alignment; int read_finish; int reference; int free; int info_fill; int info_priv_size; int recording_options; } ;
struct arm_spe_recording {struct auxtrace_record itr; struct perf_pmu* arm_spe_pmu; } ;


 int ENODEV ;
 int ENOMEM ;
 int arm_spe_info_fill ;
 int arm_spe_info_priv_size ;
 int arm_spe_read_finish ;
 int arm_spe_recording_free ;
 int arm_spe_recording_options ;
 int arm_spe_reference ;
 struct arm_spe_recording* zalloc (int) ;

struct auxtrace_record *arm_spe_recording_init(int *err,
            struct perf_pmu *arm_spe_pmu)
{
 struct arm_spe_recording *sper;

 if (!arm_spe_pmu) {
  *err = -ENODEV;
  return ((void*)0);
 }

 sper = zalloc(sizeof(struct arm_spe_recording));
 if (!sper) {
  *err = -ENOMEM;
  return ((void*)0);
 }

 sper->arm_spe_pmu = arm_spe_pmu;
 sper->itr.recording_options = arm_spe_recording_options;
 sper->itr.info_priv_size = arm_spe_info_priv_size;
 sper->itr.info_fill = arm_spe_info_fill;
 sper->itr.free = arm_spe_recording_free;
 sper->itr.reference = arm_spe_reference;
 sper->itr.read_finish = arm_spe_read_finish;
 sper->itr.alignment = 0;

 *err = 0;
 return &sper->itr;
}
