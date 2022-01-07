
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct net_bridge {int vlan_proto; } ;


 struct net_bridge* netdev_priv (struct net_device const*) ;
 int ntohs (int ) ;

int br_vlan_get_proto(const struct net_device *dev, u16 *p_proto)
{
 struct net_bridge *br = netdev_priv(dev);

 *p_proto = ntohs(br->vlan_proto);

 return 0;
}
