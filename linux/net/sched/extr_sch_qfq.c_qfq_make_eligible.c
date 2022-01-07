
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {unsigned long V; unsigned long min_slot_shift; unsigned long oldV; } ;


 int EB ;
 int ER ;
 int IB ;
 int IR ;
 int fls (unsigned long) ;
 int qfq_move_groups (struct qfq_sched*,unsigned long,int ,int ) ;

__attribute__((used)) static void qfq_make_eligible(struct qfq_sched *q)
{
 unsigned long vslot = q->V >> q->min_slot_shift;
 unsigned long old_vslot = q->oldV >> q->min_slot_shift;

 if (vslot != old_vslot) {
  unsigned long mask;
  int last_flip_pos = fls(vslot ^ old_vslot);

  if (last_flip_pos > 31)
   mask = ~0UL;
  else
   mask = (1UL << last_flip_pos) - 1;

  qfq_move_groups(q, mask, IR, ER);
  qfq_move_groups(q, mask, IB, EB);
 }
}
