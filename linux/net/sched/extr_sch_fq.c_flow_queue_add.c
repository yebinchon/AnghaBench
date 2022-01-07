
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int rbnode; struct sk_buff* next; scalar_t__ tstamp; } ;
struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;
struct TYPE_3__ {struct rb_node* rb_node; } ;
struct fq_flow {TYPE_1__ t_root; struct sk_buff* tail; struct sk_buff* head; } ;
struct TYPE_4__ {scalar_t__ time_to_send; } ;


 TYPE_2__* fq_skb_cb (struct sk_buff*) ;
 scalar_t__ ktime_get_ns () ;
 int rb_insert_color (int *,TYPE_1__*) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;

__attribute__((used)) static void flow_queue_add(struct fq_flow *flow, struct sk_buff *skb)
{
 struct rb_node **p, *parent;
 struct sk_buff *head, *aux;

 fq_skb_cb(skb)->time_to_send = skb->tstamp ?: ktime_get_ns();

 head = flow->head;
 if (!head ||
     fq_skb_cb(skb)->time_to_send >= fq_skb_cb(flow->tail)->time_to_send) {
  if (!head)
   flow->head = skb;
  else
   flow->tail->next = skb;
  flow->tail = skb;
  skb->next = ((void*)0);
  return;
 }

 p = &flow->t_root.rb_node;
 parent = ((void*)0);

 while (*p) {
  parent = *p;
  aux = rb_to_skb(parent);
  if (fq_skb_cb(skb)->time_to_send >= fq_skb_cb(aux)->time_to_send)
   p = &parent->rb_right;
  else
   p = &parent->rb_left;
 }
 rb_link_node(&skb->rbnode, parent, p);
 rb_insert_color(&skb->rbnode, &flow->t_root);
}
