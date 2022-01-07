
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sfq_slot {struct sk_buff* skblist_next; struct sk_buff* skblist_prev; } ;


 int memset (struct sfq_slot*,int ,int) ;

__attribute__((used)) static inline void slot_queue_init(struct sfq_slot *slot)
{
 memset(slot, 0, sizeof(*slot));
 slot->skblist_prev = slot->skblist_next = (struct sk_buff *)slot;
}
