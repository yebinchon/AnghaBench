
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hard_header_len; int mtu; } ;
struct iphdr {int dummy; } ;
struct ip_tunnel {int hlen; } ;


 int EINVAL ;
 int ETH_MIN_MTU ;
 int IP_MAX_MTU ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

int __ip_tunnel_change_mtu(struct net_device *dev, int new_mtu, bool strict)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 int t_hlen = tunnel->hlen + sizeof(struct iphdr);
 int max_mtu = IP_MAX_MTU - dev->hard_header_len - t_hlen;

 if (new_mtu < ETH_MIN_MTU)
  return -EINVAL;

 if (new_mtu > max_mtu) {
  if (strict)
   return -EINVAL;

  new_mtu = max_mtu;
 }

 dev->mtu = new_mtu;
 return 0;
}
