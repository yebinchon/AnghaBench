
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct batadv_softif_vlan {int dummy; } ;
struct batadv_priv {int dummy; } ;


 int ASSERT_RTNL () ;
 int BATADV_NO_FLAGS ;
 int batadv_softif_destroy_vlan (struct batadv_priv*,struct batadv_softif_vlan*) ;
 struct batadv_softif_vlan* batadv_softif_vlan_get (struct batadv_priv*,int ) ;
 int batadv_softif_vlan_put (struct batadv_softif_vlan*) ;
 int batadv_sysfs_del_meshif (struct net_device*) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

void batadv_softif_destroy_sysfs(struct net_device *soft_iface)
{
 struct batadv_priv *bat_priv = netdev_priv(soft_iface);
 struct batadv_softif_vlan *vlan;

 ASSERT_RTNL();


 vlan = batadv_softif_vlan_get(bat_priv, BATADV_NO_FLAGS);
 if (vlan) {
  batadv_softif_destroy_vlan(bat_priv, vlan);
  batadv_softif_vlan_put(vlan);
 }

 batadv_sysfs_del_meshif(soft_iface);
 unregister_netdevice(soft_iface);
}
