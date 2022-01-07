
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cbs_sched_data {int (* enqueue ) (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;} ;
struct Qdisc {int dummy; } ;


 struct cbs_sched_data* qdisc_priv (struct Qdisc*) ;
 int stub1 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;

__attribute__((used)) static int cbs_enqueue(struct sk_buff *skb, struct Qdisc *sch,
         struct sk_buff **to_free)
{
 struct cbs_sched_data *q = qdisc_priv(sch);

 return q->enqueue(skb, sch, to_free);
}
