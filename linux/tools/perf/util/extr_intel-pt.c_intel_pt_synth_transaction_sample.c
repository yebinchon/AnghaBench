
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_sample {int stream_id; int id; int ip; } ;
struct intel_pt_queue {struct intel_pt* pt; union perf_event* event_buf; } ;
struct intel_pt {int transactions_sample_type; int transactions_id; } ;


 int intel_pt_deliver_synth_event (struct intel_pt*,struct intel_pt_queue*,union perf_event*,struct perf_sample*,int ) ;
 int intel_pt_prep_sample (struct intel_pt*,struct intel_pt_queue*,union perf_event*,struct perf_sample*) ;
 scalar_t__ intel_pt_skip_event (struct intel_pt*) ;

__attribute__((used)) static int intel_pt_synth_transaction_sample(struct intel_pt_queue *ptq)
{
 struct intel_pt *pt = ptq->pt;
 union perf_event *event = ptq->event_buf;
 struct perf_sample sample = { .ip = 0, };

 if (intel_pt_skip_event(pt))
  return 0;

 intel_pt_prep_sample(pt, ptq, event, &sample);

 sample.id = ptq->pt->transactions_id;
 sample.stream_id = ptq->pt->transactions_id;

 return intel_pt_deliver_synth_event(pt, ptq, event, &sample,
         pt->transactions_sample_type);
}
