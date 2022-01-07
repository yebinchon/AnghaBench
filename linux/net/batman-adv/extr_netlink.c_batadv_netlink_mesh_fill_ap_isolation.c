
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct batadv_softif_vlan {int ap_isolation; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_ATTR_AP_ISOLATION_ENABLED ;
 int BATADV_NO_FLAGS ;
 int atomic_read (int *) ;
 struct batadv_softif_vlan* batadv_softif_vlan_get (struct batadv_priv*,int ) ;
 int batadv_softif_vlan_put (struct batadv_softif_vlan*) ;
 int nla_put_u8 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int batadv_netlink_mesh_fill_ap_isolation(struct sk_buff *msg,
       struct batadv_priv *bat_priv)
{
 struct batadv_softif_vlan *vlan;
 u8 ap_isolation;

 vlan = batadv_softif_vlan_get(bat_priv, BATADV_NO_FLAGS);
 if (!vlan)
  return 0;

 ap_isolation = atomic_read(&vlan->ap_isolation);
 batadv_softif_vlan_put(vlan);

 return nla_put_u8(msg, BATADV_ATTR_AP_ISOLATION_ENABLED,
     !!ap_isolation);
}
