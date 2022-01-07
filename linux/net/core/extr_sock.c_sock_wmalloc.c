
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_sndbuf; int sk_wmem_alloc; } ;
struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ READ_ONCE (int ) ;
 struct sk_buff* alloc_skb (unsigned long,int ) ;
 scalar_t__ refcount_read (int *) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;

struct sk_buff *sock_wmalloc(struct sock *sk, unsigned long size, int force,
        gfp_t priority)
{
 if (force ||
     refcount_read(&sk->sk_wmem_alloc) < READ_ONCE(sk->sk_sndbuf)) {
  struct sk_buff *skb = alloc_skb(size, priority);

  if (skb) {
   skb_set_owner_w(skb, sk);
   return skb;
  }
 }
 return ((void*)0);
}
