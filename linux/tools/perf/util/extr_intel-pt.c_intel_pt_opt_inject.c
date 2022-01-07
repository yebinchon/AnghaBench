
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
typedef int u64 ;
struct perf_sample {int dummy; } ;
struct TYPE_2__ {int inject; } ;
struct intel_pt {TYPE_1__ synth_opts; } ;


 int intel_pt_inject_event (union perf_event*,struct perf_sample*,int ) ;

__attribute__((used)) static inline int intel_pt_opt_inject(struct intel_pt *pt,
          union perf_event *event,
          struct perf_sample *sample, u64 type)
{
 if (!pt->synth_opts.inject)
  return 0;

 return intel_pt_inject_event(event, sample, type);
}
