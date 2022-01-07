
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;


 struct sk_buff* defer_kfree_skb_list ;

void rtnl_kfree_skbs(struct sk_buff *head, struct sk_buff *tail)
{
 if (head && tail) {
  tail->next = defer_kfree_skb_list;
  defer_kfree_skb_list = head;
 }
}
