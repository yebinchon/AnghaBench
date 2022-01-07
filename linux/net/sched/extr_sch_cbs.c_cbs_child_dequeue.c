
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int qlen; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__* ops; } ;
struct TYPE_3__ {struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;


 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *cbs_child_dequeue(struct Qdisc *sch, struct Qdisc *child)
{
 struct sk_buff *skb;

 skb = child->ops->dequeue(child);
 if (!skb)
  return ((void*)0);

 qdisc_qstats_backlog_dec(sch, skb);
 qdisc_bstats_update(sch, skb);
 sch->q.qlen--;

 return skb;
}
