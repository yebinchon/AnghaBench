
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct choke_sched_data {unsigned int head; unsigned int tail; struct sk_buff** tab; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int choke_zap_head_holes (struct choke_sched_data*) ;
 int choke_zap_tail_holes (struct choke_sched_data*) ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 int qdisc_pkt_len (struct sk_buff*) ;
 struct choke_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int qdisc_tree_reduce_backlog (struct Qdisc*,int,int ) ;

__attribute__((used)) static void choke_drop_by_idx(struct Qdisc *sch, unsigned int idx,
         struct sk_buff **to_free)
{
 struct choke_sched_data *q = qdisc_priv(sch);
 struct sk_buff *skb = q->tab[idx];

 q->tab[idx] = ((void*)0);

 if (idx == q->head)
  choke_zap_head_holes(q);
 if (idx == q->tail)
  choke_zap_tail_holes(q);

 qdisc_qstats_backlog_dec(sch, skb);
 qdisc_tree_reduce_backlog(sch, 1, qdisc_pkt_len(skb));
 qdisc_drop(skb, sch, to_free);
 --sch->q.qlen;
}
