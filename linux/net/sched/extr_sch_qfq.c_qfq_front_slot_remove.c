
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_group {size_t front; int full_slots; int * slots; } ;
struct qfq_aggregate {int next; } ;


 int BUG_ON (int) ;
 int __clear_bit (int ,int *) ;
 int hlist_del (int *) ;
 scalar_t__ hlist_empty (int *) ;
 struct qfq_aggregate* qfq_slot_head (struct qfq_group*) ;

__attribute__((used)) static void qfq_front_slot_remove(struct qfq_group *grp)
{
 struct qfq_aggregate *agg = qfq_slot_head(grp);

 BUG_ON(!agg);
 hlist_del(&agg->next);
 if (hlist_empty(&grp->slots[grp->front]))
  __clear_bit(0, &grp->full_slots);
}
