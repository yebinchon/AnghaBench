
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_6__ {int prob; scalar_t__ accu_prob_overflows; scalar_t__ accu_prob; } ;
struct TYPE_5__ {scalar_t__ maxq; int dropped; int packets_in; int ecn_mark; int overlimit; } ;
struct TYPE_4__ {scalar_t__ ecn; } ;
struct pie_sched_data {TYPE_3__ vars; TYPE_2__ stats; TYPE_1__ params; } ;
struct Qdisc {scalar_t__ limit; } ;


 scalar_t__ INET_ECN_set_ce (struct sk_buff*) ;
 int MAX_PROB ;
 int drop_early (struct Qdisc*,int ) ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 int qdisc_enqueue_tail (struct sk_buff*,struct Qdisc*) ;
 struct pie_sched_data* qdisc_priv (struct Qdisc*) ;
 scalar_t__ qdisc_qlen (struct Qdisc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pie_qdisc_enqueue(struct sk_buff *skb, struct Qdisc *sch,
        struct sk_buff **to_free)
{
 struct pie_sched_data *q = qdisc_priv(sch);
 bool enqueue = 0;

 if (unlikely(qdisc_qlen(sch) >= sch->limit)) {
  q->stats.overlimit++;
  goto out;
 }

 if (!drop_early(sch, skb->len)) {
  enqueue = 1;
 } else if (q->params.ecn && (q->vars.prob <= MAX_PROB / 10) &&
     INET_ECN_set_ce(skb)) {



  q->stats.ecn_mark++;
  enqueue = 1;
 }


 if (enqueue) {
  q->stats.packets_in++;
  if (qdisc_qlen(sch) > q->stats.maxq)
   q->stats.maxq = qdisc_qlen(sch);

  return qdisc_enqueue_tail(skb, sch);
 }

out:
 q->stats.dropped++;
 q->vars.accu_prob = 0;
 q->vars.accu_prob_overflows = 0;
 return qdisc_drop(skb, sch, to_free);
}
