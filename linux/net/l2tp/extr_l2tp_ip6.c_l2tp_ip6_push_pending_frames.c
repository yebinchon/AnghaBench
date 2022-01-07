
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;
typedef scalar_t__ __be32 ;


 int ip6_push_pending_frames (struct sock*) ;
 struct sk_buff* skb_peek (int *) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static int l2tp_ip6_push_pending_frames(struct sock *sk)
{
 struct sk_buff *skb;
 __be32 *transhdr = ((void*)0);
 int err = 0;

 skb = skb_peek(&sk->sk_write_queue);
 if (skb == ((void*)0))
  goto out;

 transhdr = (__be32 *)skb_transport_header(skb);
 *transhdr = 0;

 err = ip6_push_pending_frames(sk);

out:
 return err;
}
