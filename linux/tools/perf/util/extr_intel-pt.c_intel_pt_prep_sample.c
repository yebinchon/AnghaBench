
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct perf_sample {int branch_stack; int callchain; int ip; } ;
struct intel_pt_queue {int last_branch; int chain; int cpu; int thread; } ;
struct TYPE_2__ {scalar_t__ last_branch; scalar_t__ callchain_sz; scalar_t__ callchain; } ;
struct intel_pt {TYPE_1__ synth_opts; int kernel_start; } ;


 int intel_pt_copy_last_branch_rb (struct intel_pt_queue*) ;
 int intel_pt_prep_b_sample (struct intel_pt*,struct intel_pt_queue*,union perf_event*,struct perf_sample*) ;
 int thread_stack__sample (int ,int ,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void intel_pt_prep_sample(struct intel_pt *pt,
     struct intel_pt_queue *ptq,
     union perf_event *event,
     struct perf_sample *sample)
{
 intel_pt_prep_b_sample(pt, ptq, event, sample);

 if (pt->synth_opts.callchain) {
  thread_stack__sample(ptq->thread, ptq->cpu, ptq->chain,
         pt->synth_opts.callchain_sz + 1,
         sample->ip, pt->kernel_start);
  sample->callchain = ptq->chain;
 }

 if (pt->synth_opts.last_branch) {
  intel_pt_copy_last_branch_rb(ptq);
  sample->branch_stack = ptq->last_branch;
 }
}
