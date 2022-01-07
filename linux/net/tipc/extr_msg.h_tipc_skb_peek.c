
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int spinlock_t ;


 int skb_get (struct sk_buff*) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline struct sk_buff *tipc_skb_peek(struct sk_buff_head *list,
         spinlock_t *lock)
{
 struct sk_buff *skb;

 spin_lock_bh(lock);
 skb = skb_peek(list);
 if (skb)
  skb_get(skb);
 spin_unlock_bh(lock);
 return skb;
}
