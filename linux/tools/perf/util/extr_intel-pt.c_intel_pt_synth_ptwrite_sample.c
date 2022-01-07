
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct perf_synth_intel_ptwrite {int ip; int payload; scalar_t__ flags; } ;
struct perf_sample {int raw_data; int raw_size; int stream_id; int id; int ip; } ;
struct intel_pt_queue {TYPE_1__* state; struct intel_pt* pt; union perf_event* event_buf; } ;
struct intel_pt {int ptwrites_sample_type; int ptwrites_id; } ;
struct TYPE_2__ {int flags; int ptw_payload; } ;


 int INTEL_PT_FUP_IP ;
 int cpu_to_le64 (int ) ;
 int intel_pt_deliver_synth_event (struct intel_pt*,struct intel_pt_queue*,union perf_event*,struct perf_sample*,int ) ;
 int intel_pt_prep_p_sample (struct intel_pt*,struct intel_pt_queue*,union perf_event*,struct perf_sample*) ;
 scalar_t__ intel_pt_skip_event (struct intel_pt*) ;
 int perf_synth__raw_data (struct perf_synth_intel_ptwrite*) ;
 int perf_synth__raw_size (struct perf_synth_intel_ptwrite) ;

__attribute__((used)) static int intel_pt_synth_ptwrite_sample(struct intel_pt_queue *ptq)
{
 struct intel_pt *pt = ptq->pt;
 union perf_event *event = ptq->event_buf;
 struct perf_sample sample = { .ip = 0, };
 struct perf_synth_intel_ptwrite raw;

 if (intel_pt_skip_event(pt))
  return 0;

 intel_pt_prep_p_sample(pt, ptq, event, &sample);

 sample.id = ptq->pt->ptwrites_id;
 sample.stream_id = ptq->pt->ptwrites_id;

 raw.flags = 0;
 raw.ip = !!(ptq->state->flags & INTEL_PT_FUP_IP);
 raw.payload = cpu_to_le64(ptq->state->ptw_payload);

 sample.raw_size = perf_synth__raw_size(raw);
 sample.raw_data = perf_synth__raw_data(&raw);

 return intel_pt_deliver_synth_event(pt, ptq, event, &sample,
         pt->ptwrites_sample_type);
}
