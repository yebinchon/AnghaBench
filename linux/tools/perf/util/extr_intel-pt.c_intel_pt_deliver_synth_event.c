
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
typedef int u64 ;
struct perf_sample {int dummy; } ;
struct intel_pt_queue {int dummy; } ;
struct TYPE_2__ {scalar_t__ last_branch; } ;
struct intel_pt {TYPE_1__ synth_opts; } ;


 int intel_pt_deliver_synth_b_event (struct intel_pt*,union perf_event*,struct perf_sample*,int ) ;
 int intel_pt_reset_last_branch_rb (struct intel_pt_queue*) ;

__attribute__((used)) static inline int intel_pt_deliver_synth_event(struct intel_pt *pt,
            struct intel_pt_queue *ptq,
            union perf_event *event,
            struct perf_sample *sample,
            u64 type)
{
 int ret;

 ret = intel_pt_deliver_synth_b_event(pt, event, sample, type);

 if (pt->synth_opts.last_branch)
  intel_pt_reset_last_branch_rb(ptq);

 return ret;
}
