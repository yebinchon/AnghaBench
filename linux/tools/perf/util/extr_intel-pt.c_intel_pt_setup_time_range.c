
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_pt_queue {int sel_start; scalar_t__ sel_timestamp; scalar_t__ sel_idx; } ;
struct intel_pt {TYPE_1__* time_ranges; int range_cnt; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;



__attribute__((used)) static void intel_pt_setup_time_range(struct intel_pt *pt,
          struct intel_pt_queue *ptq)
{
 if (!pt->range_cnt)
  return;

 ptq->sel_timestamp = pt->time_ranges[0].start;
 ptq->sel_idx = 0;

 if (ptq->sel_timestamp) {
  ptq->sel_start = 1;
 } else {
  ptq->sel_timestamp = pt->time_ranges[0].end;
  ptq->sel_start = 0;
 }
}
