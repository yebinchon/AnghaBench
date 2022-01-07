
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 int __br_vlan_get_pvid (struct net_device const*,int ,int *) ;
 int br_port_get_check_rcu (struct net_device const*) ;

int br_vlan_get_pvid_rcu(const struct net_device *dev, u16 *p_pvid)
{
 return __br_vlan_get_pvid(dev, br_port_get_check_rcu(dev), p_pvid);
}
