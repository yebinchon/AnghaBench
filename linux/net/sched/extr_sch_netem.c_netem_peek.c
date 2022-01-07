
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sk_buff {int dummy; } ;
struct netem_sched_data {struct sk_buff* t_head; int t_root; } ;
struct TYPE_2__ {scalar_t__ time_to_send; } ;


 TYPE_1__* netem_skb_cb (struct sk_buff*) ;
 struct sk_buff* skb_rb_first (int *) ;

__attribute__((used)) static struct sk_buff *netem_peek(struct netem_sched_data *q)
{
 struct sk_buff *skb = skb_rb_first(&q->t_root);
 u64 t1, t2;

 if (!skb)
  return q->t_head;
 if (!q->t_head)
  return skb;

 t1 = netem_skb_cb(skb)->time_to_send;
 t2 = netem_skb_cb(q->t_head)->time_to_send;
 if (t1 < t2)
  return skb;
 return q->t_head;
}
