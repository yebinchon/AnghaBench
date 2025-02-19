
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_result {int classid; scalar_t__ class; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int priority; } ;
struct drr_sched {int filter_list; } ;
struct drr_class {int dummy; } ;
struct Qdisc {int handle; } ;


 int NET_XMIT_SUCCESS ;




 scalar_t__ TC_H_MAJ (int) ;
 int __NET_XMIT_BYPASS ;
 int __NET_XMIT_STOLEN ;
 struct drr_class* drr_find_class (struct Qdisc*,int) ;
 struct drr_sched* qdisc_priv (struct Qdisc*) ;
 struct tcf_proto* rcu_dereference_bh (int ) ;
 int tcf_classify (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ;

__attribute__((used)) static struct drr_class *drr_classify(struct sk_buff *skb, struct Qdisc *sch,
          int *qerr)
{
 struct drr_sched *q = qdisc_priv(sch);
 struct drr_class *cl;
 struct tcf_result res;
 struct tcf_proto *fl;
 int result;

 if (TC_H_MAJ(skb->priority ^ sch->handle) == 0) {
  cl = drr_find_class(sch, skb->priority);
  if (cl != ((void*)0))
   return cl;
 }

 *qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
 fl = rcu_dereference_bh(q->filter_list);
 result = tcf_classify(skb, fl, &res, 0);
 if (result >= 0) {
  cl = (struct drr_class *)res.class;
  if (cl == ((void*)0))
   cl = drr_find_class(sch, res.classid);
  return cl;
 }
 return ((void*)0);
}
