
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct qfq_sched {int dummy; } ;
struct qfq_group {unsigned int slot_shift; unsigned int S; unsigned int front; int full_slots; int * slots; } ;
struct qfq_aggregate {int next; int S; } ;


 unsigned int QFQ_MAX_SLOTS ;
 int __clear_bit (unsigned int,int *) ;
 int hlist_del (int *) ;
 scalar_t__ hlist_empty (int *) ;
 unsigned int qfq_round_down (int ,unsigned int) ;

__attribute__((used)) static void qfq_slot_remove(struct qfq_sched *q, struct qfq_group *grp,
       struct qfq_aggregate *agg)
{
 unsigned int i, offset;
 u64 roundedS;

 roundedS = qfq_round_down(agg->S, grp->slot_shift);
 offset = (roundedS - grp->S) >> grp->slot_shift;

 i = (grp->front + offset) % QFQ_MAX_SLOTS;

 hlist_del(&agg->next);
 if (hlist_empty(&grp->slots[i]))
  __clear_bit(offset, &grp->full_slots);
}
