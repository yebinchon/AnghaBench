
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net {int dummy; } ;
struct genl_info {int * attrs; } ;
struct batadv_softif_vlan {int dummy; } ;
struct batadv_priv {int dummy; } ;


 size_t BATADV_ATTR_VLANID ;
 int BATADV_VLAN_HAS_TAG ;
 int EINVAL ;
 int ENOENT ;
 struct batadv_softif_vlan* ERR_PTR (int ) ;
 struct batadv_softif_vlan* batadv_softif_vlan_get (struct batadv_priv*,int) ;
 int nla_get_u16 (int ) ;

__attribute__((used)) static struct batadv_softif_vlan *
batadv_get_vlan_from_info(struct batadv_priv *bat_priv, struct net *net,
     struct genl_info *info)
{
 struct batadv_softif_vlan *vlan;
 u16 vid;

 if (!info->attrs[BATADV_ATTR_VLANID])
  return ERR_PTR(-EINVAL);

 vid = nla_get_u16(info->attrs[BATADV_ATTR_VLANID]);

 vlan = batadv_softif_vlan_get(bat_priv, vid | BATADV_VLAN_HAS_TAG);
 if (!vlan)
  return ERR_PTR(-ENOENT);

 return vlan;
}
