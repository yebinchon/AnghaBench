
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int rbnode; } ;
struct rb_node {int dummy; } ;
struct etf_sched_data {int head; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 struct etf_sched_data* qdisc_priv (struct Qdisc*) ;
 int rb_erase_cached (int *,int *) ;
 struct rb_node* rb_first_cached (int *) ;
 struct rb_node* rb_next (struct rb_node*) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;
 int rtnl_kfree_skbs (struct sk_buff*,struct sk_buff*) ;

__attribute__((used)) static void timesortedlist_clear(struct Qdisc *sch)
{
 struct etf_sched_data *q = qdisc_priv(sch);
 struct rb_node *p = rb_first_cached(&q->head);

 while (p) {
  struct sk_buff *skb = rb_to_skb(p);

  p = rb_next(p);

  rb_erase_cached(&skb->rbnode, &q->head);
  rtnl_kfree_skbs(skb, skb);
  sch->q.qlen--;
 }
}
