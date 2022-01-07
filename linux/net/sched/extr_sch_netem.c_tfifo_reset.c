
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int rbnode; } ;
struct rb_node {int dummy; } ;
struct netem_sched_data {struct sk_buff* t_tail; struct sk_buff* t_head; int t_root; } ;
struct Qdisc {int dummy; } ;


 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 int rb_erase (int *,int *) ;
 struct rb_node* rb_first (int *) ;
 struct rb_node* rb_next (struct rb_node*) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;
 int rtnl_kfree_skbs (struct sk_buff*,struct sk_buff*) ;

__attribute__((used)) static void tfifo_reset(struct Qdisc *sch)
{
 struct netem_sched_data *q = qdisc_priv(sch);
 struct rb_node *p = rb_first(&q->t_root);

 while (p) {
  struct sk_buff *skb = rb_to_skb(p);

  p = rb_next(p);
  rb_erase(&skb->rbnode, &q->t_root);
  rtnl_kfree_skbs(skb, skb);
 }

 rtnl_kfree_skbs(q->t_head, q->t_tail);
 q->t_head = ((void*)0);
 q->t_tail = ((void*)0);
}
