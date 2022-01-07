
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; struct sk_buff* prev; } ;
struct sfq_slot {struct sk_buff* skblist_prev; } ;



__attribute__((used)) static inline void slot_queue_add(struct sfq_slot *slot, struct sk_buff *skb)
{
 skb->prev = slot->skblist_prev;
 skb->next = (struct sk_buff *)slot;
 slot->skblist_prev->next = skb;
 slot->skblist_prev = skb;
}
