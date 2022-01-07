
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct choke_sched_data {size_t head; size_t tail; int tab_mask; int vars; struct sk_buff** tab; } ;
struct TYPE_4__ {scalar_t__ backlog; } ;
struct TYPE_3__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ qstats; TYPE_1__ q; } ;


 int memset (struct sk_buff**,int ,int) ;
 struct choke_sched_data* qdisc_priv (struct Qdisc*) ;
 int red_restart (int *) ;
 int rtnl_qdisc_drop (struct sk_buff*,struct Qdisc*) ;

__attribute__((used)) static void choke_reset(struct Qdisc *sch)
{
 struct choke_sched_data *q = qdisc_priv(sch);

 while (q->head != q->tail) {
  struct sk_buff *skb = q->tab[q->head];

  q->head = (q->head + 1) & q->tab_mask;
  if (!skb)
   continue;
  rtnl_qdisc_drop(skb, sch);
 }

 sch->q.qlen = 0;
 sch->qstats.backlog = 0;
 memset(q->tab, 0, (q->tab_mask + 1) * sizeof(struct sk_buff *));
 q->head = q->tail = 0;
 red_restart(&q->vars);
}
