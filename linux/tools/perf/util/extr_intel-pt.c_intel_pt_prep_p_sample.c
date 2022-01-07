
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_sample {scalar_t__ flags; int ip; } ;
struct intel_pt_queue {int dummy; } ;
struct intel_pt {int dummy; } ;


 int intel_pt_prep_sample (struct intel_pt*,struct intel_pt_queue*,union perf_event*,struct perf_sample*) ;

__attribute__((used)) static void intel_pt_prep_p_sample(struct intel_pt *pt,
       struct intel_pt_queue *ptq,
       union perf_event *event,
       struct perf_sample *sample)
{
 intel_pt_prep_sample(pt, ptq, event, sample);





 if (!sample->ip)
  sample->flags = 0;
}
