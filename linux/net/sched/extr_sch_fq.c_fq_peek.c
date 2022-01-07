
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct fq_flow {struct sk_buff* head; int t_root; } ;
struct TYPE_2__ {scalar_t__ time_to_send; } ;


 TYPE_1__* fq_skb_cb (struct sk_buff*) ;
 struct sk_buff* skb_rb_first (int *) ;

__attribute__((used)) static struct sk_buff *fq_peek(struct fq_flow *flow)
{
 struct sk_buff *skb = skb_rb_first(&flow->t_root);
 struct sk_buff *head = flow->head;

 if (!skb)
  return head;

 if (!head)
  return skb;

 if (fq_skb_cb(skb)->time_to_send < fq_skb_cb(head)->time_to_send)
  return skb;
 return head;
}
