
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_softif_vlan {int vid; } ;
struct batadv_priv {TYPE_1__* soft_iface; } ;
struct TYPE_2__ {int dev_addr; } ;


 int batadv_softif_vlan_put (struct batadv_softif_vlan*) ;
 int batadv_sysfs_del_vlan (struct batadv_priv*,struct batadv_softif_vlan*) ;
 int batadv_tt_local_remove (struct batadv_priv*,int ,int ,char*,int) ;

__attribute__((used)) static void batadv_softif_destroy_vlan(struct batadv_priv *bat_priv,
           struct batadv_softif_vlan *vlan)
{



 batadv_tt_local_remove(bat_priv, bat_priv->soft_iface->dev_addr,
          vlan->vid, "vlan interface destroyed", 0);

 batadv_sysfs_del_vlan(bat_priv, vlan);
 batadv_softif_vlan_put(vlan);
}
