
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct qfq_sched {unsigned long* bitmaps; struct qfq_aggregate* in_serv_agg; } ;
struct qfq_group {unsigned long index; size_t front; unsigned long long slot_shift; scalar_t__ S; scalar_t__ F; int * slots; int full_slots; } ;
struct qfq_aggregate {int S; int F; struct qfq_group* grp; } ;


 size_t EB ;
 size_t ER ;
 size_t IB ;
 size_t IR ;
 int __clear_bit (unsigned long,unsigned long*) ;
 unsigned long __fls (unsigned long) ;
 int __set_bit (unsigned long,unsigned long*) ;
 int charge_actual_service (struct qfq_aggregate*) ;
 scalar_t__ hlist_empty (int *) ;
 int qfq_calc_state (struct qfq_sched*,struct qfq_group*) ;
 struct qfq_aggregate* qfq_choose_next_agg (struct qfq_sched*) ;
 int qfq_move_groups (struct qfq_sched*,unsigned long,size_t,size_t) ;
 scalar_t__ qfq_round_down (int ,unsigned long long) ;
 int qfq_slot_remove (struct qfq_sched*,struct qfq_group*,struct qfq_aggregate*) ;
 struct qfq_aggregate* qfq_slot_scan (struct qfq_group*) ;
 scalar_t__ test_bit (unsigned long,unsigned long*) ;

__attribute__((used)) static void qfq_deactivate_agg(struct qfq_sched *q, struct qfq_aggregate *agg)
{
 struct qfq_group *grp = agg->grp;
 unsigned long mask;
 u64 roundedS;
 int s;

 if (agg == q->in_serv_agg) {
  charge_actual_service(agg);
  q->in_serv_agg = qfq_choose_next_agg(q);
  return;
 }

 agg->F = agg->S;
 qfq_slot_remove(q, grp, agg);

 if (!grp->full_slots) {
  __clear_bit(grp->index, &q->bitmaps[IR]);
  __clear_bit(grp->index, &q->bitmaps[EB]);
  __clear_bit(grp->index, &q->bitmaps[IB]);

  if (test_bit(grp->index, &q->bitmaps[ER]) &&
      !(q->bitmaps[ER] & ~((1UL << grp->index) - 1))) {
   mask = q->bitmaps[ER] & ((1UL << grp->index) - 1);
   if (mask)
    mask = ~((1UL << __fls(mask)) - 1);
   else
    mask = ~0UL;
   qfq_move_groups(q, mask, EB, ER);
   qfq_move_groups(q, mask, IB, IR);
  }
  __clear_bit(grp->index, &q->bitmaps[ER]);
 } else if (hlist_empty(&grp->slots[grp->front])) {
  agg = qfq_slot_scan(grp);
  roundedS = qfq_round_down(agg->S, grp->slot_shift);
  if (grp->S != roundedS) {
   __clear_bit(grp->index, &q->bitmaps[ER]);
   __clear_bit(grp->index, &q->bitmaps[IR]);
   __clear_bit(grp->index, &q->bitmaps[EB]);
   __clear_bit(grp->index, &q->bitmaps[IB]);
   grp->S = roundedS;
   grp->F = roundedS + (2ULL << grp->slot_shift);
   s = qfq_calc_state(q, grp);
   __set_bit(grp->index, &q->bitmaps[s]);
  }
 }
}
