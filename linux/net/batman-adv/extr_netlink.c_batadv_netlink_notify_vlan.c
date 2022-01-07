
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct batadv_softif_vlan {int dummy; } ;
struct batadv_priv {int soft_iface; } ;


 int BATADV_CMD_SET_VLAN ;
 int BATADV_NL_MCGRP_CONFIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int batadv_netlink_family ;
 int batadv_netlink_vlan_fill (struct sk_buff*,struct batadv_priv*,struct batadv_softif_vlan*,int ,int ,int ,int ) ;
 int dev_net (int ) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

int batadv_netlink_notify_vlan(struct batadv_priv *bat_priv,
          struct batadv_softif_vlan *vlan)
{
 struct sk_buff *msg;
 int ret;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 ret = batadv_netlink_vlan_fill(msg, bat_priv, vlan,
           BATADV_CMD_SET_VLAN, 0, 0, 0);
 if (ret < 0) {
  nlmsg_free(msg);
  return ret;
 }

 genlmsg_multicast_netns(&batadv_netlink_family,
    dev_net(bat_priv->soft_iface), msg, 0,
    BATADV_NL_MCGRP_CONFIG, GFP_KERNEL);

 return 0;
}
