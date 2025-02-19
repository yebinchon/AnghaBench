
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int mark; struct net_device* dev; } ;
struct rtable {int rt_flags; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in_device {int dummy; } ;
struct flowi4 {int flowi4_scope; int flowi4_mark; int flowi4_tos; int daddr; int flowi4_oif; int flowi4_iif; } ;
struct fib_result {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int saddr; int tos; int daddr; } ;


 scalar_t__ IN_DEV_SRC_VMARK (struct in_device*) ;
 int LOOPBACK_IFINDEX ;
 int RTCF_BROADCAST ;
 int RTCF_LOCAL ;
 int RTCF_MULTICAST ;
 int RT_SCOPE_LINK ;
 int RT_SCOPE_UNIVERSE ;
 int RT_TOS (int ) ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 int fib_lookup (struct net*,struct flowi4*,struct fib_result*,int ) ;
 int fib_result_prefsrc (struct net*,struct fib_result*) ;
 int inet_select_addr (struct net_device*,int ,int) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ipv4_is_zeronet (int ) ;
 int l3mdev_master_ifindex_rcu (struct net_device*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

__be32 fib_compute_spec_dst(struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 struct in_device *in_dev;
 struct fib_result res;
 struct rtable *rt;
 struct net *net;
 int scope;

 rt = skb_rtable(skb);
 if ((rt->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST | RTCF_LOCAL)) ==
     RTCF_LOCAL)
  return ip_hdr(skb)->daddr;

 in_dev = __in_dev_get_rcu(dev);

 net = dev_net(dev);

 scope = RT_SCOPE_UNIVERSE;
 if (!ipv4_is_zeronet(ip_hdr(skb)->saddr)) {
  bool vmark = in_dev && IN_DEV_SRC_VMARK(in_dev);
  struct flowi4 fl4 = {
   .flowi4_iif = LOOPBACK_IFINDEX,
   .flowi4_oif = l3mdev_master_ifindex_rcu(dev),
   .daddr = ip_hdr(skb)->saddr,
   .flowi4_tos = RT_TOS(ip_hdr(skb)->tos),
   .flowi4_scope = scope,
   .flowi4_mark = vmark ? skb->mark : 0,
  };
  if (!fib_lookup(net, &fl4, &res, 0))
   return fib_result_prefsrc(net, &res);
 } else {
  scope = RT_SCOPE_LINK;
 }

 return inet_select_addr(dev, ip_hdr(skb)->saddr, scope);
}
