
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct tcf_result {int classid; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cake_tin_data {int dummy; } ;
struct cake_sched_data {int filter_list; } ;
struct Qdisc {int dummy; } ;


 int CAKE_QUEUES ;
 int NET_XMIT_SUCCESS ;




 int TC_H_MAJ (int ) ;
 int TC_H_MIN (int ) ;
 int __NET_XMIT_BYPASS ;
 int __NET_XMIT_STOLEN ;
 scalar_t__ cake_hash (struct cake_tin_data*,struct sk_buff*,int,int,int) ;
 struct cake_tin_data* cake_select_tin (struct Qdisc*,struct sk_buff*) ;
 struct cake_sched_data* qdisc_priv (struct Qdisc*) ;
 struct tcf_proto* rcu_dereference_bh (int ) ;
 int tcf_classify (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ;

__attribute__((used)) static u32 cake_classify(struct Qdisc *sch, struct cake_tin_data **t,
    struct sk_buff *skb, int flow_mode, int *qerr)
{
 struct cake_sched_data *q = qdisc_priv(sch);
 struct tcf_proto *filter;
 struct tcf_result res;
 u16 flow = 0, host = 0;
 int result;

 filter = rcu_dereference_bh(q->filter_list);
 if (!filter)
  goto hash;

 *qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
 result = tcf_classify(skb, filter, &res, 0);

 if (result >= 0) {
  if (TC_H_MIN(res.classid) <= CAKE_QUEUES)
   flow = TC_H_MIN(res.classid);
  if (TC_H_MAJ(res.classid) <= (CAKE_QUEUES << 16))
   host = TC_H_MAJ(res.classid) >> 16;
 }
hash:
 *t = cake_select_tin(sch, skb);
 return cake_hash(*t, skb, flow_mode, flow, host) + 1;
}
