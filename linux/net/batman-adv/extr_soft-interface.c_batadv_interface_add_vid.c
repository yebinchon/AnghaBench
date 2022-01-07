
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct batadv_softif_vlan {int kobj; } ;
struct batadv_priv {TYPE_1__* soft_iface; } ;
typedef scalar_t__ __be16 ;
struct TYPE_3__ {int dev_addr; } ;


 int BATADV_NO_MARK ;
 int BATADV_NULL_IFINDEX ;
 unsigned short BATADV_VLAN_HAS_TAG ;
 int EINVAL ;
 int ETH_P_8021Q ;
 int batadv_softif_create_vlan (struct batadv_priv*,unsigned short) ;
 struct batadv_softif_vlan* batadv_softif_vlan_get (struct batadv_priv*,unsigned short) ;
 int batadv_softif_vlan_put (struct batadv_softif_vlan*) ;
 int batadv_sysfs_add_vlan (TYPE_1__*,struct batadv_softif_vlan*) ;
 int batadv_tt_local_add (TYPE_1__*,int ,unsigned short,int ,int ) ;
 scalar_t__ htons (int ) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int batadv_interface_add_vid(struct net_device *dev, __be16 proto,
        unsigned short vid)
{
 struct batadv_priv *bat_priv = netdev_priv(dev);
 struct batadv_softif_vlan *vlan;
 int ret;




 if (proto != htons(ETH_P_8021Q))
  return -EINVAL;

 vid |= BATADV_VLAN_HAS_TAG;







 vlan = batadv_softif_vlan_get(bat_priv, vid);
 if (!vlan)
  return batadv_softif_create_vlan(bat_priv, vid);




 if (!vlan->kobj) {
  ret = batadv_sysfs_add_vlan(bat_priv->soft_iface, vlan);
  if (ret) {
   batadv_softif_vlan_put(vlan);
   return ret;
  }
 }





 batadv_tt_local_add(bat_priv->soft_iface,
       bat_priv->soft_iface->dev_addr, vid,
       BATADV_NULL_IFINDEX, BATADV_NO_MARK);

 return 0;
}
