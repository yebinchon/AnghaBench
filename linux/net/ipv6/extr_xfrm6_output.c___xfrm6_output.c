
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ protocol; int len; scalar_t__ sk; int ignore_df; } ;
struct net {int dummy; } ;
struct dst_entry {struct xfrm_state* xfrm; } ;
struct TYPE_4__ {int flags; } ;


 int EMSGSIZE ;
 int ETH_P_IPV6 ;
 TYPE_2__* IP6CB (struct sk_buff*) ;
 int IP6SKB_REROUTED ;
 scalar_t__ XFRM_MODE_TUNNEL ;
 int __xfrm6_output_finish ;
 int __xfrm6_output_state_finish (struct xfrm_state*,struct sock*,struct sk_buff*) ;
 scalar_t__ dst_allfrag (struct dst_entry*) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int ip6_fragment (struct net*,struct sock*,struct sk_buff*,int ) ;
 int ip6_skb_dst_mtu (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 scalar_t__ xfrm6_local_dontfrag (struct sk_buff*) ;
 int xfrm6_local_rxpmtu (struct sk_buff*,int) ;
 int xfrm_local_error (struct sk_buff*,int) ;

__attribute__((used)) static int __xfrm6_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct xfrm_state *x = dst->xfrm;
 int mtu;
 bool toobig;
 if (x->props.mode != XFRM_MODE_TUNNEL)
  goto skip_frag;

 if (skb->protocol == htons(ETH_P_IPV6))
  mtu = ip6_skb_dst_mtu(skb);
 else
  mtu = dst_mtu(skb_dst(skb));

 toobig = skb->len > mtu && !skb_is_gso(skb);

 if (toobig && xfrm6_local_dontfrag(skb)) {
  xfrm6_local_rxpmtu(skb, mtu);
  kfree_skb(skb);
  return -EMSGSIZE;
 } else if (!skb->ignore_df && toobig && skb->sk) {
  xfrm_local_error(skb, mtu);
  kfree_skb(skb);
  return -EMSGSIZE;
 }

 if (toobig || dst_allfrag(skb_dst(skb)))
  return ip6_fragment(net, sk, skb,
        __xfrm6_output_finish);

skip_frag:
 return __xfrm6_output_state_finish(x, sk, skb);
}
