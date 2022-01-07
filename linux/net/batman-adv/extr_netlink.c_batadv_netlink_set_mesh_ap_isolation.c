
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct batadv_softif_vlan {int ap_isolation; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_NO_FLAGS ;
 int ENOENT ;
 int atomic_set (int *,int) ;
 struct batadv_softif_vlan* batadv_softif_vlan_get (struct batadv_priv*,int ) ;
 int batadv_softif_vlan_put (struct batadv_softif_vlan*) ;
 int nla_get_u8 (struct nlattr*) ;

__attribute__((used)) static int batadv_netlink_set_mesh_ap_isolation(struct nlattr *attr,
      struct batadv_priv *bat_priv)
{
 struct batadv_softif_vlan *vlan;

 vlan = batadv_softif_vlan_get(bat_priv, BATADV_NO_FLAGS);
 if (!vlan)
  return -ENOENT;

 atomic_set(&vlan->ap_isolation, !!nla_get_u8(attr));
 batadv_softif_vlan_put(vlan);

 return 0;
}
