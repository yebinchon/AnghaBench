
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef scalar_t__ u8 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {TYPE_1__* dev; int mark; scalar_t__ data; } ;
struct net {int dummy; } ;
struct ipv6hdr {int daddr; } ;
struct ip_auth_hdr {int spi; } ;
struct inet6_skb_parm {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int ifindex; } ;


 int AF_INET6 ;
 scalar_t__ ICMPV6_PKT_TOOBIG ;
 int IPPROTO_AH ;
 scalar_t__ NDISC_REDIRECT ;
 struct net* dev_net (TYPE_1__*) ;
 int ip6_redirect (struct sk_buff*,struct net*,int ,int ,int ) ;
 int ip6_update_pmtu (struct sk_buff*,struct net*,int ,int ,int ,int ) ;
 int sock_net_uid (struct net*,int *) ;
 struct xfrm_state* xfrm_state_lookup (struct net*,int ,int *,int ,int ,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static int ah6_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
     u8 type, u8 code, int offset, __be32 info)
{
 struct net *net = dev_net(skb->dev);
 struct ipv6hdr *iph = (struct ipv6hdr *)skb->data;
 struct ip_auth_hdr *ah = (struct ip_auth_hdr *)(skb->data+offset);
 struct xfrm_state *x;

 if (type != ICMPV6_PKT_TOOBIG &&
     type != NDISC_REDIRECT)
  return 0;

 x = xfrm_state_lookup(net, skb->mark, (xfrm_address_t *)&iph->daddr, ah->spi, IPPROTO_AH, AF_INET6);
 if (!x)
  return 0;

 if (type == NDISC_REDIRECT)
  ip6_redirect(skb, net, skb->dev->ifindex, 0,
        sock_net_uid(net, ((void*)0)));
 else
  ip6_update_pmtu(skb, net, info, 0, 0, sock_net_uid(net, ((void*)0)));
 xfrm_state_put(x);

 return 0;
}
