
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct batadv_softif_vlan {int dummy; } ;
struct batadv_priv {int dummy; } ;
typedef scalar_t__ __be16 ;


 unsigned short BATADV_VLAN_HAS_TAG ;
 int EINVAL ;
 int ENOENT ;
 int ETH_P_8021Q ;
 int batadv_softif_destroy_vlan (struct batadv_priv*,struct batadv_softif_vlan*) ;
 struct batadv_softif_vlan* batadv_softif_vlan_get (struct batadv_priv*,unsigned short) ;
 int batadv_softif_vlan_put (struct batadv_softif_vlan*) ;
 scalar_t__ htons (int ) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int batadv_interface_kill_vid(struct net_device *dev, __be16 proto,
         unsigned short vid)
{
 struct batadv_priv *bat_priv = netdev_priv(dev);
 struct batadv_softif_vlan *vlan;




 if (proto != htons(ETH_P_8021Q))
  return -EINVAL;

 vlan = batadv_softif_vlan_get(bat_priv, vid | BATADV_VLAN_HAS_TAG);
 if (!vlan)
  return -ENOENT;

 batadv_softif_destroy_vlan(bat_priv, vlan);


 batadv_softif_vlan_put(vlan);

 return 0;
}
