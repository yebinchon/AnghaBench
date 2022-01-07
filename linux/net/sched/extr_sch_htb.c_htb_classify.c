
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_result {scalar_t__ classid; scalar_t__ class; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {scalar_t__ priority; } ;
struct htb_sched {int defcls; int filter_list; } ;
struct htb_class {scalar_t__ level; int filter_list; } ;
struct Qdisc {scalar_t__ handle; } ;


 struct htb_class* HTB_DIRECT ;
 int NET_XMIT_SUCCESS ;




 int TC_H_MAJ (scalar_t__) ;
 scalar_t__ TC_H_MAKE (int ,int ) ;
 int __NET_XMIT_BYPASS ;
 int __NET_XMIT_STOLEN ;
 struct htb_class* htb_find (scalar_t__,struct Qdisc*) ;
 struct htb_sched* qdisc_priv (struct Qdisc*) ;
 struct tcf_proto* rcu_dereference_bh (int ) ;
 int tcf_classify (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ;

__attribute__((used)) static struct htb_class *htb_classify(struct sk_buff *skb, struct Qdisc *sch,
          int *qerr)
{
 struct htb_sched *q = qdisc_priv(sch);
 struct htb_class *cl;
 struct tcf_result res;
 struct tcf_proto *tcf;
 int result;





 if (skb->priority == sch->handle)
  return HTB_DIRECT;
 cl = htb_find(skb->priority, sch);
 if (cl) {
  if (cl->level == 0)
   return cl;

  tcf = rcu_dereference_bh(cl->filter_list);
 } else {
  tcf = rcu_dereference_bh(q->filter_list);
 }

 *qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
 while (tcf && (result = tcf_classify(skb, tcf, &res, 0)) >= 0) {
  cl = (void *)res.class;
  if (!cl) {
   if (res.classid == sch->handle)
    return HTB_DIRECT;
   cl = htb_find(res.classid, sch);
   if (!cl)
    break;
  }
  if (!cl->level)
   return cl;


  tcf = rcu_dereference_bh(cl->filter_list);
 }

 cl = htb_find(TC_H_MAKE(TC_H_MAJ(sch->handle), q->defcls), sch);
 if (!cl || cl->level)
  return HTB_DIRECT;
 return cl;
}
