
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {unsigned int backlog; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct Qdisc {scalar_t__ limit; TYPE_1__ qstats; TYPE_2__ q; } ;


 int NET_XMIT_CN ;
 int __qdisc_queue_drop_head (struct Qdisc*,TYPE_2__*,struct sk_buff**) ;
 scalar_t__ likely (int) ;
 int qdisc_enqueue_tail (struct sk_buff*,struct Qdisc*) ;
 int qdisc_qstats_drop (struct Qdisc*) ;
 int qdisc_tree_reduce_backlog (struct Qdisc*,int ,unsigned int) ;

__attribute__((used)) static int pfifo_tail_enqueue(struct sk_buff *skb, struct Qdisc *sch,
         struct sk_buff **to_free)
{
 unsigned int prev_backlog;

 if (likely(sch->q.qlen < sch->limit))
  return qdisc_enqueue_tail(skb, sch);

 prev_backlog = sch->qstats.backlog;

 __qdisc_queue_drop_head(sch, &sch->q, to_free);
 qdisc_qstats_drop(sch);
 qdisc_enqueue_tail(skb, sch);

 qdisc_tree_reduce_backlog(sch, 0, prev_backlog - sch->qstats.backlog);
 return NET_XMIT_CN;
}
