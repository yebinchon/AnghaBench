
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {struct net_device* dev; int len; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int nexthdr; int daddr; } ;
struct inet6_skb_parm {int flags; scalar_t__ ra; } ;
typedef int __be16 ;
struct TYPE_8__ {TYPE_1__* devconf_all; } ;
struct TYPE_10__ {TYPE_2__ ipv6; } ;
struct TYPE_9__ {struct net_device* dev; } ;
struct TYPE_7__ {scalar_t__ mc_forwarding; } ;


 int ENODEV ;
 int GFP_ATOMIC ;
 struct inet6_skb_parm* IP6CB (struct sk_buff*) ;
 int IP6SKB_FORWARDED ;
 int IP6SKB_ROUTERALERT ;
 int IPSTATS_MIB_INMCAST ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_LOOPBACK ;
 int IPV6_OPT_ROUTERALERT_MLD ;
 int __IP6_UPD_PO_STATS (TYPE_4__*,int ,int ,int ) ;
 int __in6_dev_get_safely (struct net_device*) ;
 struct net_device* dev_get_by_index_rcu (TYPE_4__*,int) ;
 TYPE_4__* dev_net (struct net_device*) ;
 scalar_t__ htons (int ) ;
 int inet6_sdif (struct sk_buff*) ;
 int ip6_input (struct sk_buff*) ;
 int ip6_mr_input (struct sk_buff*) ;
 int ipv6_addr_type (int *) ;
 int ipv6_chk_mcast_addr (struct net_device*,int *,int *) ;
 int ipv6_ext_hdr (int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ ipv6_is_mld (struct sk_buff*,int ,int) ;
 int ipv6_skip_exthdr (struct sk_buff*,int,int *,int *) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 TYPE_3__* skb_dst (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int ip6_mc_input(struct sk_buff *skb)
{
 int sdif = inet6_sdif(skb);
 const struct ipv6hdr *hdr;
 struct net_device *dev;
 bool deliver;

 __IP6_UPD_PO_STATS(dev_net(skb_dst(skb)->dev),
    __in6_dev_get_safely(skb->dev), IPSTATS_MIB_INMCAST,
    skb->len);


 if (sdif) {
  rcu_read_lock();
  dev = dev_get_by_index_rcu(dev_net(skb->dev), sdif);
  if (!dev) {
   rcu_read_unlock();
   kfree_skb(skb);
   return -ENODEV;
  }
 } else {
  dev = skb->dev;
 }

 hdr = ipv6_hdr(skb);
 deliver = ipv6_chk_mcast_addr(dev, &hdr->daddr, ((void*)0));
 if (sdif)
  rcu_read_unlock();
 if (likely(deliver))
  ip6_input(skb);
 else {

  kfree_skb(skb);
 }

 return 0;
}
