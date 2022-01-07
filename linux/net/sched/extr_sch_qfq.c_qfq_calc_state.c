
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {int * bitmaps; int V; } ;
struct qfq_group {int F; int index; int S; } ;


 unsigned int EB ;
 size_t ER ;
 unsigned long mask_from (int ,int ) ;
 struct qfq_group* qfq_ffs (struct qfq_sched*,unsigned long) ;
 unsigned int qfq_gt (int ,int ) ;

__attribute__((used)) static int qfq_calc_state(struct qfq_sched *q, const struct qfq_group *grp)
{

 unsigned int state = qfq_gt(grp->S, q->V);
 unsigned long mask = mask_from(q->bitmaps[ER], grp->index);
 struct qfq_group *next;

 if (mask) {
  next = qfq_ffs(q, mask);
  if (qfq_gt(grp->F, next->F))
   state |= EB;
 }

 return state;
}
