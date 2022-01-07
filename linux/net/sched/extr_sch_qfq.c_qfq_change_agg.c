
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qfq_sched {int dummy; } ;
struct qfq_class {int dummy; } ;
struct qfq_aggregate {int dummy; } ;
struct Qdisc {int dummy; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 struct qfq_aggregate* kzalloc (int,int ) ;
 struct qfq_sched* qdisc_priv (struct Qdisc*) ;
 int qfq_add_to_agg (struct qfq_sched*,struct qfq_aggregate*,struct qfq_class*) ;
 int qfq_deact_rm_from_agg (struct qfq_sched*,struct qfq_class*) ;
 struct qfq_aggregate* qfq_find_agg (struct qfq_sched*,int ,int ) ;
 int qfq_init_agg (struct qfq_sched*,struct qfq_aggregate*,int ,int ) ;

__attribute__((used)) static int qfq_change_agg(struct Qdisc *sch, struct qfq_class *cl, u32 weight,
      u32 lmax)
{
 struct qfq_sched *q = qdisc_priv(sch);
 struct qfq_aggregate *new_agg = qfq_find_agg(q, lmax, weight);

 if (new_agg == ((void*)0)) {
  new_agg = kzalloc(sizeof(*new_agg), GFP_ATOMIC);
  if (new_agg == ((void*)0))
   return -ENOBUFS;
  qfq_init_agg(q, new_agg, lmax, weight);
 }
 qfq_deact_rm_from_agg(q, cl);
 qfq_add_to_agg(q, new_agg, cl);

 return 0;
}
