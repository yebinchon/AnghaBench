
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int tstamp; int dev; int * prev; int * next; int rbnode; } ;
struct etf_sched_data {int last; int head; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 int qdisc_dev (struct Qdisc*) ;
 struct etf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int rb_erase_cached (int *,int *) ;

__attribute__((used)) static void timesortedlist_remove(struct Qdisc *sch, struct sk_buff *skb)
{
 struct etf_sched_data *q = qdisc_priv(sch);

 rb_erase_cached(&skb->rbnode, &q->head);




 skb->next = ((void*)0);
 skb->prev = ((void*)0);
 skb->dev = qdisc_dev(sch);

 qdisc_qstats_backlog_dec(sch, skb);

 qdisc_bstats_update(sch, skb);

 q->last = skb->tstamp;

 sch->q.qlen--;
}
