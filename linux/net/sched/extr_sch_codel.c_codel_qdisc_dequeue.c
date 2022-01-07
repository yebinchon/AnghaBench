
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ drop_len; scalar_t__ drop_count; } ;
struct codel_sched_data {TYPE_3__ stats; int vars; int params; } ;
struct TYPE_5__ {scalar_t__ qlen; } ;
struct TYPE_4__ {int backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;


 struct sk_buff* codel_dequeue (struct Qdisc*,int *,int *,int *,TYPE_3__*,int ,int ,int ,int ) ;
 int codel_get_enqueue_time ;
 int dequeue_func ;
 int drop_func ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 int qdisc_pkt_len ;
 struct codel_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_tree_reduce_backlog (struct Qdisc*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct sk_buff *codel_qdisc_dequeue(struct Qdisc *sch)
{
 struct codel_sched_data *q = qdisc_priv(sch);
 struct sk_buff *skb;

 skb = codel_dequeue(sch, &sch->qstats.backlog, &q->params, &q->vars,
       &q->stats, qdisc_pkt_len, codel_get_enqueue_time,
       drop_func, dequeue_func);




 if (q->stats.drop_count && sch->q.qlen) {
  qdisc_tree_reduce_backlog(sch, q->stats.drop_count, q->stats.drop_len);
  q->stats.drop_count = 0;
  q->stats.drop_len = 0;
 }
 if (skb)
  qdisc_bstats_update(sch, skb);
 return skb;
}
