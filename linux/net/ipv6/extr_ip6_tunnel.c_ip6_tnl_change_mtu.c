
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int hard_header_len; int mtu; } ;
struct TYPE_2__ {scalar_t__ proto; } ;
struct ip6_tnl {TYPE_1__ parms; } ;


 int EINVAL ;
 int ETH_MIN_MTU ;
 int IP6_MAX_MTU ;
 scalar_t__ IPPROTO_IPV6 ;
 int IPV6_MIN_MTU ;
 int IP_MAX_MTU ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;

int ip6_tnl_change_mtu(struct net_device *dev, int new_mtu)
{
 struct ip6_tnl *tnl = netdev_priv(dev);

 if (tnl->parms.proto == IPPROTO_IPV6) {
  if (new_mtu < IPV6_MIN_MTU)
   return -EINVAL;
 } else {
  if (new_mtu < ETH_MIN_MTU)
   return -EINVAL;
 }
 if (tnl->parms.proto == IPPROTO_IPV6 || tnl->parms.proto == 0) {
  if (new_mtu > IP6_MAX_MTU - dev->hard_header_len)
   return -EINVAL;
 } else {
  if (new_mtu > IP_MAX_MTU - dev->hard_header_len)
   return -EINVAL;
 }
 dev->mtu = new_mtu;
 return 0;
}
