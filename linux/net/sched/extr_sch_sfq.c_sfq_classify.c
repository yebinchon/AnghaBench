
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_result {int classid; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int priority; } ;
struct sfq_sched_data {scalar_t__ divisor; int filter_list; } ;
struct Qdisc {scalar_t__ handle; } ;


 int NET_XMIT_SUCCESS ;




 scalar_t__ TC_H_MAJ (int ) ;
 unsigned int TC_H_MIN (int ) ;
 int __NET_XMIT_BYPASS ;
 int __NET_XMIT_STOLEN ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 struct tcf_proto* rcu_dereference_bh (int ) ;
 unsigned int sfq_hash (struct sfq_sched_data*,struct sk_buff*) ;
 int tcf_classify (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ;

__attribute__((used)) static unsigned int sfq_classify(struct sk_buff *skb, struct Qdisc *sch,
     int *qerr)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 struct tcf_result res;
 struct tcf_proto *fl;
 int result;

 if (TC_H_MAJ(skb->priority) == sch->handle &&
     TC_H_MIN(skb->priority) > 0 &&
     TC_H_MIN(skb->priority) <= q->divisor)
  return TC_H_MIN(skb->priority);

 fl = rcu_dereference_bh(q->filter_list);
 if (!fl)
  return sfq_hash(q, skb) + 1;

 *qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
 result = tcf_classify(skb, fl, &res, 0);
 if (result >= 0) {
  if (TC_H_MIN(res.classid) <= q->divisor)
   return TC_H_MIN(res.classid);
 }
 return 0;
}
