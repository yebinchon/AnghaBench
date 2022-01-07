
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {unsigned int len; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {scalar_t__ xfrm; } ;


 TYPE_2__* IPCB (struct sk_buff*) ;
 int IPSKB_FRAG_PMTU ;
 int IPSKB_REROUTED ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 int ip_finish_output2 (struct net*,struct sock*,struct sk_buff*) ;
 int ip_finish_output_gso (struct net*,struct sock*,struct sk_buff*,unsigned int) ;
 int ip_fragment (struct net*,struct sock*,struct sk_buff*,unsigned int,int (*) (struct net*,struct sock*,struct sk_buff*)) ;
 unsigned int ip_skb_dst_mtu (struct sock*,struct sk_buff*) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static int __ip_finish_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 unsigned int mtu;
 mtu = ip_skb_dst_mtu(sk, skb);
 if (skb_is_gso(skb))
  return ip_finish_output_gso(net, sk, skb, mtu);

 if (skb->len > mtu || (IPCB(skb)->flags & IPSKB_FRAG_PMTU))
  return ip_fragment(net, sk, skb, mtu, ip_finish_output2);

 return ip_finish_output2(net, sk, skb);
}
