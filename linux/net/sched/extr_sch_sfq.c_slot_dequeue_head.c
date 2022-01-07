
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* prev; struct sk_buff* next; } ;
struct sfq_slot {struct sk_buff* skblist_next; } ;



__attribute__((used)) static inline struct sk_buff *slot_dequeue_head(struct sfq_slot *slot)
{
 struct sk_buff *skb = slot->skblist_next;

 slot->skblist_next = skb->next;
 skb->next->prev = (struct sk_buff *)slot;
 skb->next = skb->prev = ((void*)0);
 return skb;
}
