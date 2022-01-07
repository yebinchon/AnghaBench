
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* prev; struct sk_buff* next; } ;
struct net_device {int dummy; } ;


 int skb_mark_not_on_list (struct sk_buff*) ;
 struct sk_buff* validate_xmit_skb (struct sk_buff*,struct net_device*,int*) ;

struct sk_buff *validate_xmit_skb_list(struct sk_buff *skb, struct net_device *dev, bool *again)
{
 struct sk_buff *next, *head = ((void*)0), *tail;

 for (; skb != ((void*)0); skb = next) {
  next = skb->next;
  skb_mark_not_on_list(skb);


  skb->prev = skb;

  skb = validate_xmit_skb(skb, dev, again);
  if (!skb)
   continue;

  if (!head)
   head = skb;
  else
   tail->next = skb;



  tail = skb->prev;
 }
 return head;
}
