
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* prev; struct sk_buff* next; } ;
struct sfq_slot {struct sk_buff* skblist_prev; } ;



__attribute__((used)) static inline struct sk_buff *slot_dequeue_tail(struct sfq_slot *slot)
{
 struct sk_buff *skb = slot->skblist_prev;

 slot->skblist_prev = skb->prev;
 skb->prev->next = (struct sk_buff *)slot;
 skb->next = skb->prev = ((void*)0);
 return skb;
}
