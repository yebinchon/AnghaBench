
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int __kfree_skb (struct sk_buff*) ;
 int lock_sock_fast (struct sock*) ;
 int sk_mem_reclaim_partial (struct sock*) ;
 int sk_peek_offset_bwd (struct sock*,int) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_unref (struct sk_buff*) ;
 int unlock_sock_fast (struct sock*,int) ;

void __skb_free_datagram_locked(struct sock *sk, struct sk_buff *skb, int len)
{
 bool slow;

 if (!skb_unref(skb)) {
  sk_peek_offset_bwd(sk, len);
  return;
 }

 slow = lock_sock_fast(sk);
 sk_peek_offset_bwd(sk, len);
 skb_orphan(skb);
 sk_mem_reclaim_partial(sk);
 unlock_sock_fast(sk, slow);


 __kfree_skb(skb);
}
