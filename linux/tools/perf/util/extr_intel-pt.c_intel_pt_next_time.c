
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_pt_queue {int sel_start; size_t sel_idx; int sel_timestamp; struct intel_pt* pt; } ;
struct intel_pt {int range_cnt; TYPE_1__* time_ranges; } ;
struct TYPE_2__ {int start; int end; } ;



__attribute__((used)) static bool intel_pt_next_time(struct intel_pt_queue *ptq)
{
 struct intel_pt *pt = ptq->pt;

 if (ptq->sel_start) {

  ptq->sel_start = 0;
  ptq->sel_timestamp = pt->time_ranges[ptq->sel_idx].end;
  return 1;
 } else if (ptq->sel_idx + 1 < pt->range_cnt) {

  ptq->sel_start = 1;
  ptq->sel_idx += 1;
  ptq->sel_timestamp = pt->time_ranges[ptq->sel_idx].start;
  return 1;
 }


 return 0;
}
