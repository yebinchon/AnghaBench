
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;


 int cond_resched () ;
 struct sk_buff* defer_kfree_skb_list ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_unlock (int *) ;
 int rtnl_mutex ;

void __rtnl_unlock(void)
{
 struct sk_buff *head = defer_kfree_skb_list;

 defer_kfree_skb_list = ((void*)0);

 mutex_unlock(&rtnl_mutex);

 while (head) {
  struct sk_buff *next = head->next;

  kfree_skb(head);
  cond_resched();
  head = next;
 }
}
