
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct TYPE_2__ {scalar_t__ fib_has_custom_local_routes; } ;
struct net {TYPE_1__ ipv4; } ;
struct in_device {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 scalar_t__ IN_DEV_ACCEPT_LOCAL (struct in_device*) ;
 int IN_DEV_RPFILTER (struct in_device*) ;
 int IN_DEV_TX_REDIRECTS (struct in_device*) ;
 int __fib_validate_source (struct sk_buff*,int ,int ,int ,int,struct net_device*,int,struct in_device*,scalar_t__*) ;
 struct net* dev_net (struct net_device*) ;
 scalar_t__ fib4_has_custom_rules (struct net*) ;
 int fib_num_tclassid_users (struct net*) ;
 scalar_t__ inet_lookup_ifaddr_rcu (struct net*,int ) ;
 scalar_t__ secpath_exists (struct sk_buff*) ;

int fib_validate_source(struct sk_buff *skb, __be32 src, __be32 dst,
   u8 tos, int oif, struct net_device *dev,
   struct in_device *idev, u32 *itag)
{
 int r = secpath_exists(skb) ? 0 : IN_DEV_RPFILTER(idev);
 struct net *net = dev_net(dev);

 if (!r && !fib_num_tclassid_users(net) &&
     (dev->ifindex != oif || !IN_DEV_TX_REDIRECTS(idev))) {
  if (IN_DEV_ACCEPT_LOCAL(idev))
   goto ok;




  if (net->ipv4.fib_has_custom_local_routes ||
      fib4_has_custom_rules(net))
   goto full_check;
  if (inet_lookup_ifaddr_rcu(net, src))
   return -EINVAL;

ok:
  *itag = 0;
  return 0;
 }

full_check:
 return __fib_validate_source(skb, src, dst, tos, oif, dev, r, idev, itag);
}
