
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {TYPE_2__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct ip_tunnel {TYPE_2__* dev; } ;
typedef int __be32 ;
struct TYPE_4__ {struct ip_tunnel* ip4; } ;
struct TYPE_6__ {TYPE_1__ tunnel; } ;
struct TYPE_5__ {int ifindex; } ;


 int EINVAL ;
 int TUNNEL_NO_KEY ;
 int XFRM_POLICY_IN ;
 TYPE_3__* XFRM_TUNNEL_SKB_CB (struct sk_buff*) ;
 struct net* dev_net (TYPE_2__*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct ip_tunnel* ip_tunnel_lookup (struct ip_tunnel_net*,int ,int ,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct ip_tunnel_net* net_generic (struct net*,int ) ;
 int vti_net_id ;
 int xfrm4_policy_check (int *,int ,struct sk_buff*) ;
 int xfrm_input (struct sk_buff*,int,int ,int) ;

__attribute__((used)) static int vti_input(struct sk_buff *skb, int nexthdr, __be32 spi,
       int encap_type, bool update_skb_dev)
{
 struct ip_tunnel *tunnel;
 const struct iphdr *iph = ip_hdr(skb);
 struct net *net = dev_net(skb->dev);
 struct ip_tunnel_net *itn = net_generic(net, vti_net_id);

 tunnel = ip_tunnel_lookup(itn, skb->dev->ifindex, TUNNEL_NO_KEY,
      iph->saddr, iph->daddr, 0);
 if (tunnel) {
  if (!xfrm4_policy_check(((void*)0), XFRM_POLICY_IN, skb))
   goto drop;

  XFRM_TUNNEL_SKB_CB(skb)->tunnel.ip4 = tunnel;

  if (update_skb_dev)
   skb->dev = tunnel->dev;

  return xfrm_input(skb, nexthdr, spi, encap_type);
 }

 return -EINVAL;
drop:
 kfree_skb(skb);
 return 0;
}
