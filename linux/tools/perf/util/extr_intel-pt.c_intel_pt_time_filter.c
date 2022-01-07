
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct intel_pt_queue {scalar_t__ timestamp; scalar_t__ sel_timestamp; int have_sample; int switch_state; int decoder; int pt; scalar_t__ sync_switch; scalar_t__ sel_start; } ;


 int INTEL_PT_SS_NOT_TRACING ;
 int INTEL_PT_SS_UNKNOWN ;
 int intel_pt_fast_forward (int ,scalar_t__) ;
 int intel_pt_next_tid (int ,struct intel_pt_queue*) ;
 int intel_pt_next_time (struct intel_pt_queue*) ;

__attribute__((used)) static int intel_pt_time_filter(struct intel_pt_queue *ptq, u64 *ff_timestamp)
{
 int err;

 while (1) {
  if (ptq->sel_start) {
   if (ptq->timestamp >= ptq->sel_timestamp) {

    intel_pt_next_time(ptq);
    if (!ptq->sel_timestamp) {

     return 0;
    }

    continue;
   }

   ptq->have_sample = 0;
   if (ptq->sel_timestamp > *ff_timestamp) {
    if (ptq->sync_switch) {
     intel_pt_next_tid(ptq->pt, ptq);
     ptq->switch_state = INTEL_PT_SS_UNKNOWN;
    }
    *ff_timestamp = ptq->sel_timestamp;
    err = intel_pt_fast_forward(ptq->decoder,
           ptq->sel_timestamp);
    if (err)
     return err;
   }
   return 0;
  } else if (ptq->timestamp > ptq->sel_timestamp) {

   if (!intel_pt_next_time(ptq)) {

    ptq->have_sample = 0;
    ptq->switch_state = INTEL_PT_SS_NOT_TRACING;
    return 1;
   }

   continue;
  } else {

   return 0;
  }
 }
}
