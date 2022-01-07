
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sk_buff {int rbnode; struct sk_buff* next; } ;
struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;
struct TYPE_5__ {struct rb_node* rb_node; } ;
struct netem_sched_data {TYPE_2__ t_root; struct sk_buff* t_tail; struct sk_buff* t_head; } ;
struct TYPE_4__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;
struct TYPE_6__ {scalar_t__ time_to_send; } ;


 TYPE_3__* netem_skb_cb (struct sk_buff*) ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 int rb_insert_color (int *,TYPE_2__*) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;

__attribute__((used)) static void tfifo_enqueue(struct sk_buff *nskb, struct Qdisc *sch)
{
 struct netem_sched_data *q = qdisc_priv(sch);
 u64 tnext = netem_skb_cb(nskb)->time_to_send;

 if (!q->t_tail || tnext >= netem_skb_cb(q->t_tail)->time_to_send) {
  if (q->t_tail)
   q->t_tail->next = nskb;
  else
   q->t_head = nskb;
  q->t_tail = nskb;
 } else {
  struct rb_node **p = &q->t_root.rb_node, *parent = ((void*)0);

  while (*p) {
   struct sk_buff *skb;

   parent = *p;
   skb = rb_to_skb(parent);
   if (tnext >= netem_skb_cb(skb)->time_to_send)
    p = &parent->rb_right;
   else
    p = &parent->rb_left;
  }
  rb_link_node(&nskb->rbnode, parent, p);
  rb_insert_color(&nskb->rbnode, &q->t_root);
 }
 sch->q.qlen++;
}
