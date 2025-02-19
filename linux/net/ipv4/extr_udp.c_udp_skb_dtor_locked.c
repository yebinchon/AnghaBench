
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int data; } ;


 int prefetch (int *) ;
 int udp_rmem_release (struct sock*,int ,int,int) ;
 int udp_skb_truesize (struct sk_buff*) ;

__attribute__((used)) static void udp_skb_dtor_locked(struct sock *sk, struct sk_buff *skb)
{
 prefetch(&skb->data);
 udp_rmem_release(sk, udp_skb_truesize(skb), 1, 1);
}
