
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; struct batadv_softif_vlan** user_ptr; } ;
struct batadv_softif_vlan {int ap_isolation; } ;
struct batadv_priv {int ap_isolation; } ;


 size_t BATADV_ATTR_AP_ISOLATION_ENABLED ;
 int atomic_set (int *,int) ;
 int batadv_netlink_notify_vlan (struct batadv_softif_vlan*,struct batadv_softif_vlan*) ;
 int nla_get_u8 (struct nlattr*) ;

__attribute__((used)) static int batadv_netlink_set_vlan(struct sk_buff *skb, struct genl_info *info)
{
 struct batadv_softif_vlan *vlan = info->user_ptr[1];
 struct batadv_priv *bat_priv = info->user_ptr[0];
 struct nlattr *attr;

 if (info->attrs[BATADV_ATTR_AP_ISOLATION_ENABLED]) {
  attr = info->attrs[BATADV_ATTR_AP_ISOLATION_ENABLED];

  atomic_set(&vlan->ap_isolation, !!nla_get_u8(attr));
 }

 batadv_netlink_notify_vlan(bat_priv, vlan);

 return 0;
}
