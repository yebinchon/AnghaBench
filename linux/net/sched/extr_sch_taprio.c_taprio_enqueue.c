
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct taprio_sched {int flags; struct Qdisc** qdiscs; } ;
struct sk_buff {int tstamp; scalar_t__ sk; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int SOCK_TXTIME ;
 scalar_t__ TXTIME_ASSIST_IS_ENABLED (int ) ;
 int get_packet_txtime (struct sk_buff*,struct Qdisc*) ;
 int is_valid_interval (struct sk_buff*,struct Qdisc*) ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 int qdisc_enqueue (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_inc (struct Qdisc*,struct sk_buff*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ sock_flag (scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int taprio_enqueue(struct sk_buff *skb, struct Qdisc *sch,
     struct sk_buff **to_free)
{
 struct taprio_sched *q = qdisc_priv(sch);
 struct Qdisc *child;
 int queue;

 queue = skb_get_queue_mapping(skb);

 child = q->qdiscs[queue];
 if (unlikely(!child))
  return qdisc_drop(skb, sch, to_free);

 if (skb->sk && sock_flag(skb->sk, SOCK_TXTIME)) {
  if (!is_valid_interval(skb, sch))
   return qdisc_drop(skb, sch, to_free);
 } else if (TXTIME_ASSIST_IS_ENABLED(q->flags)) {
  skb->tstamp = get_packet_txtime(skb, sch);
  if (!skb->tstamp)
   return qdisc_drop(skb, sch, to_free);
 }

 qdisc_qstats_backlog_inc(sch, skb);
 sch->q.qlen++;

 return qdisc_enqueue(skb, child, to_free);
}
