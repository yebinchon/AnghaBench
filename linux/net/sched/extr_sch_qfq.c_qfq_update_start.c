
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct qfq_sched {scalar_t__ V; int * bitmaps; } ;
struct qfq_group {scalar_t__ F; } ;
struct qfq_aggregate {scalar_t__ F; scalar_t__ S; TYPE_1__* grp; } ;
struct TYPE_2__ {int slot_shift; int index; } ;


 size_t ER ;
 unsigned long mask_from (int ,int ) ;
 struct qfq_group* qfq_ffs (struct qfq_sched*,unsigned long) ;
 scalar_t__ qfq_gt (scalar_t__,scalar_t__) ;
 scalar_t__ qfq_round_down (scalar_t__,int) ;

__attribute__((used)) static void qfq_update_start(struct qfq_sched *q, struct qfq_aggregate *agg)
{
 unsigned long mask;
 u64 limit, roundedF;
 int slot_shift = agg->grp->slot_shift;

 roundedF = qfq_round_down(agg->F, slot_shift);
 limit = qfq_round_down(q->V, slot_shift) + (1ULL << slot_shift);

 if (!qfq_gt(agg->F, q->V) || qfq_gt(roundedF, limit)) {

  mask = mask_from(q->bitmaps[ER], agg->grp->index);
  if (mask) {
   struct qfq_group *next = qfq_ffs(q, mask);
   if (qfq_gt(roundedF, next->F)) {
    if (qfq_gt(limit, next->F))
     agg->S = next->F;
    else
     agg->S = limit;
    return;
   }
  }
  agg->S = q->V;
 } else
  agg->S = agg->F;
}
