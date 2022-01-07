
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ sk; int protocol; int dev; scalar_t__ ignore_df; } ;
struct dst_entry {int dev; } ;


 int EMSGSIZE ;
 int ETH_P_IPV6 ;
 int ICMPV6_PKT_TOOBIG ;
 int IPV6_MIN_MTU ;
 int dst_mtu (struct dst_entry*) ;
 int htons (int ) ;
 int icmpv6_send (struct sk_buff*,int ,int ,int) ;
 int ip6_skb_dst_mtu (struct sk_buff*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_gso_validate_network_len (struct sk_buff*,int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 scalar_t__ xfrm6_local_dontfrag (struct sk_buff*) ;
 int xfrm6_local_rxpmtu (struct sk_buff*,int) ;
 int xfrm_local_error (struct sk_buff*,int) ;

__attribute__((used)) static int xfrm6_tunnel_check_size(struct sk_buff *skb)
{
 int mtu, ret = 0;
 struct dst_entry *dst = skb_dst(skb);

 if (skb->ignore_df)
  goto out;

 mtu = dst_mtu(dst);
 if (mtu < IPV6_MIN_MTU)
  mtu = IPV6_MIN_MTU;

 if ((!skb_is_gso(skb) && skb->len > mtu) ||
     (skb_is_gso(skb) &&
      !skb_gso_validate_network_len(skb, ip6_skb_dst_mtu(skb)))) {
  skb->dev = dst->dev;
  skb->protocol = htons(ETH_P_IPV6);

  if (xfrm6_local_dontfrag(skb))
   xfrm6_local_rxpmtu(skb, mtu);
  else if (skb->sk)
   xfrm_local_error(skb, mtu);
  else
   icmpv6_send(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
  ret = -EMSGSIZE;
 }
out:
 return ret;
}
