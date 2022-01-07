
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct net {int dummy; } ;
struct TYPE_7__ {scalar_t__ frag_max_size; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ xfrm; } ;


 TYPE_4__* IP6CB (struct sk_buff*) ;
 TYPE_3__* IPCB (struct sk_buff*) ;
 int IPSKB_REROUTED ;
 scalar_t__ dst_allfrag (TYPE_1__*) ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 int ip6_finish_output2 (struct net*,struct sock*,struct sk_buff*) ;
 int ip6_fragment (struct net*,struct sock*,struct sk_buff*,int (*) (struct net*,struct sock*,struct sk_buff*)) ;
 scalar_t__ ip6_skb_dst_mtu (struct sk_buff*) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static int __ip6_finish_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 if ((skb->len > ip6_skb_dst_mtu(skb) && !skb_is_gso(skb)) ||
     dst_allfrag(skb_dst(skb)) ||
     (IP6CB(skb)->frag_max_size && skb->len > IP6CB(skb)->frag_max_size))
  return ip6_fragment(net, sk, skb, ip6_finish_output2);
 else
  return ip6_finish_output2(net, sk, skb);
}
