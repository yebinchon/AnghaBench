
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;


 int kfree_skb (struct sk_buff*) ;

void kfree_skb_list(struct sk_buff *segs)
{
 while (segs) {
  struct sk_buff *next = segs->next;

  kfree_skb(segs);
  segs = next;
 }
}
