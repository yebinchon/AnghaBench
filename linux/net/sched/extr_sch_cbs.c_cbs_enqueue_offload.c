
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cbs_sched_data {struct Qdisc* qdisc; } ;
struct Qdisc {int dummy; } ;


 int cbs_child_enqueue (struct sk_buff*,struct Qdisc*,struct Qdisc*,struct sk_buff**) ;
 struct cbs_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int cbs_enqueue_offload(struct sk_buff *skb, struct Qdisc *sch,
          struct sk_buff **to_free)
{
 struct cbs_sched_data *q = qdisc_priv(sch);
 struct Qdisc *qdisc = q->qdisc;

 return cbs_child_enqueue(skb, sch, qdisc, to_free);
}
