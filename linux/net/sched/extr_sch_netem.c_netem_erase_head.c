
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int rbnode; struct sk_buff* next; } ;
struct netem_sched_data {int t_root; int * t_tail; struct sk_buff* t_head; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static void netem_erase_head(struct netem_sched_data *q, struct sk_buff *skb)
{
 if (skb == q->t_head) {
  q->t_head = skb->next;
  if (!q->t_head)
   q->t_tail = ((void*)0);
 } else {
  rb_erase(&skb->rbnode, &q->t_root);
 }
}
