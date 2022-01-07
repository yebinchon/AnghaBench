
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_peek_off; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ READ_ONCE (int ) ;
 int __consume_stateless_skb (struct sk_buff*) ;
 int lock_sock_fast (struct sock*) ;
 int sk_peek_offset_bwd (struct sock*,int) ;
 int skb_release_head_state (struct sk_buff*) ;
 int skb_unref (struct sk_buff*) ;
 int udp_skb_has_head_state (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int unlock_sock_fast (struct sock*,int) ;

void skb_consume_udp(struct sock *sk, struct sk_buff *skb, int len)
{
 if (unlikely(READ_ONCE(sk->sk_peek_off) >= 0)) {
  bool slow = lock_sock_fast(sk);

  sk_peek_offset_bwd(sk, len);
  unlock_sock_fast(sk, slow);
 }

 if (!skb_unref(skb))
  return;




 if (unlikely(udp_skb_has_head_state(skb)))
  skb_release_head_state(skb);
 __consume_stateless_skb(skb);
}
