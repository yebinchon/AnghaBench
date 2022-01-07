
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_allocation; } ;
struct page_frag {int dummy; } ;


 scalar_t__ likely (int ) ;
 int sk_enter_memory_pressure (struct sock*) ;
 int sk_stream_moderate_sndbuf (struct sock*) ;
 int skb_page_frag_refill (unsigned int,struct page_frag*,int ) ;

bool sk_page_frag_refill(struct sock *sk, struct page_frag *pfrag)
{
 if (likely(skb_page_frag_refill(32U, pfrag, sk->sk_allocation)))
  return 1;

 sk_enter_memory_pressure(sk);
 sk_stream_moderate_sndbuf(sk);
 return 0;
}
