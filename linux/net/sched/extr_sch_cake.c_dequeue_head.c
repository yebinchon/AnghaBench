
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct cake_flow {struct sk_buff* head; } ;


 int skb_mark_not_on_list (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *dequeue_head(struct cake_flow *flow)
{
 struct sk_buff *skb = flow->head;

 if (skb) {
  flow->head = skb->next;
  skb_mark_not_on_list(skb);
 }

 return skb;
}
