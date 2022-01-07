
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int len; int dev; } ;
struct rt6_info {int dummy; } ;
struct net_device {int flags; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {struct net_device* dev; int lwtstate; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {scalar_t__ hop_limit; int daddr; int saddr; } ;


 int EINVAL ;
 int GFP_ATOMIC ;
 int IFF_LOOPBACK ;
 TYPE_2__* IP6CB (struct sk_buff*) ;
 int IP6SKB_FORWARDED ;
 int IP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int IP6_UPD_PO_STATS (struct net*,struct inet6_dev*,int ,int ) ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int IPSTATS_MIB_OUTMCAST ;
 int IPSTATS_MIB_OUTNOROUTES ;
 scalar_t__ IPV6_ADDR_MC_SCOPE (int *) ;
 scalar_t__ IPV6_ADDR_SCOPE_NODELOCAL ;
 int IS_ERR (struct neighbour*) ;
 int LWTUNNEL_XMIT_DONE ;
 int NFPROTO_IPV6 ;
 int NF_HOOK (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,int ,int ) ;
 int NF_INET_POST_ROUTING ;
 struct neighbour* __ipv6_neigh_lookup_noref (struct net_device*,struct in6_addr const*) ;
 struct neighbour* __neigh_create (int *,struct in6_addr const*,struct net_device*,int) ;
 int dev_loopback_xmit ;
 struct inet6_dev* ip6_dst_idev (struct dst_entry*) ;
 scalar_t__ ipv6_addr_is_multicast (int *) ;
 scalar_t__ ipv6_chk_mcast_addr (struct net_device*,int *,int *) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int lwtunnel_xmit (struct sk_buff*) ;
 scalar_t__ lwtunnel_xmit_redirect (int ) ;
 scalar_t__ mroute6_is_socket (struct net*,struct sk_buff*) ;
 int nd_tbl ;
 int neigh_output (struct neighbour*,struct sk_buff*,int) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 struct in6_addr* rt6_nexthop (struct rt6_info*,int *) ;
 scalar_t__ sk_mc_loop (struct sock*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int sock_confirm_neigh (struct sk_buff*,struct neighbour*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ip6_finish_output2(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct net_device *dev = dst->dev;
 const struct in6_addr *nexthop;
 struct neighbour *neigh;
 int ret;

 if (ipv6_addr_is_multicast(&ipv6_hdr(skb)->daddr)) {
  struct inet6_dev *idev = ip6_dst_idev(skb_dst(skb));

  if (!(dev->flags & IFF_LOOPBACK) && sk_mc_loop(sk) &&
      ((mroute6_is_socket(net, skb) &&
       !(IP6CB(skb)->flags & IP6SKB_FORWARDED)) ||
       ipv6_chk_mcast_addr(dev, &ipv6_hdr(skb)->daddr,
      &ipv6_hdr(skb)->saddr))) {
   struct sk_buff *newskb = skb_clone(skb, GFP_ATOMIC);




   if (newskb)
    NF_HOOK(NFPROTO_IPV6, NF_INET_POST_ROUTING,
     net, sk, newskb, ((void*)0), newskb->dev,
     dev_loopback_xmit);

   if (ipv6_hdr(skb)->hop_limit == 0) {
    IP6_INC_STATS(net, idev,
           IPSTATS_MIB_OUTDISCARDS);
    kfree_skb(skb);
    return 0;
   }
  }

  IP6_UPD_PO_STATS(net, idev, IPSTATS_MIB_OUTMCAST, skb->len);

  if (IPV6_ADDR_MC_SCOPE(&ipv6_hdr(skb)->daddr) <=
      IPV6_ADDR_SCOPE_NODELOCAL &&
      !(dev->flags & IFF_LOOPBACK)) {
   kfree_skb(skb);
   return 0;
  }
 }

 if (lwtunnel_xmit_redirect(dst->lwtstate)) {
  int res = lwtunnel_xmit(skb);

  if (res < 0 || res == LWTUNNEL_XMIT_DONE)
   return res;
 }

 rcu_read_lock_bh();
 nexthop = rt6_nexthop((struct rt6_info *)dst, &ipv6_hdr(skb)->daddr);
 neigh = __ipv6_neigh_lookup_noref(dst->dev, nexthop);
 if (unlikely(!neigh))
  neigh = __neigh_create(&nd_tbl, nexthop, dst->dev, 0);
 if (!IS_ERR(neigh)) {
  sock_confirm_neigh(skb, neigh);
  ret = neigh_output(neigh, skb, 0);
  rcu_read_unlock_bh();
  return ret;
 }
 rcu_read_unlock_bh();

 IP6_INC_STATS(net, ip6_dst_idev(dst), IPSTATS_MIB_OUTNOROUTES);
 kfree_skb(skb);
 return -EINVAL;
}
