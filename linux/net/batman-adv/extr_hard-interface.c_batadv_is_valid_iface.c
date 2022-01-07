
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ type; scalar_t__ addr_len; } ;


 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ ETH_ALEN ;
 int IFF_LOOPBACK ;
 scalar_t__ batadv_is_on_batman_iface (struct net_device const*) ;

__attribute__((used)) static bool batadv_is_valid_iface(const struct net_device *net_dev)
{
 if (net_dev->flags & IFF_LOOPBACK)
  return 0;

 if (net_dev->type != ARPHRD_ETHER)
  return 0;

 if (net_dev->addr_len != ETH_ALEN)
  return 0;


 if (batadv_is_on_batman_iface(net_dev))
  return 0;

 return 1;
}
