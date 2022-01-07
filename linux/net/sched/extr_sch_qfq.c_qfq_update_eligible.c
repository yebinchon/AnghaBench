
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {unsigned long* bitmaps; int V; } ;
struct qfq_group {int S; } ;


 size_t ER ;
 size_t IB ;
 size_t IR ;
 struct qfq_group* qfq_ffs (struct qfq_sched*,unsigned long) ;
 scalar_t__ qfq_gt (int ,int ) ;
 int qfq_make_eligible (struct qfq_sched*) ;

__attribute__((used)) static void qfq_update_eligible(struct qfq_sched *q)
{
 struct qfq_group *grp;
 unsigned long ineligible;

 ineligible = q->bitmaps[IR] | q->bitmaps[IB];
 if (ineligible) {
  if (!q->bitmaps[ER]) {
   grp = qfq_ffs(q, ineligible);
   if (qfq_gt(grp->S, q->V))
    q->V = grp->S;
  }
  qfq_make_eligible(q);
 }
}
