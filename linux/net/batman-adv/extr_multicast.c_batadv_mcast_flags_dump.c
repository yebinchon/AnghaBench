
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netlink_callback {long* args; int skb; } ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int soft_iface; } ;
struct TYPE_2__ {int portid; } ;


 TYPE_1__ NETLINK_CB (int ) ;
 int __batadv_mcast_flags_dump (struct sk_buff*,int,struct netlink_callback*,struct batadv_priv*,long*,long*) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 int batadv_mcast_netlink_get_primary (struct netlink_callback*,struct batadv_hard_iface**) ;
 struct batadv_priv* netdev_priv (int ) ;

int batadv_mcast_flags_dump(struct sk_buff *msg, struct netlink_callback *cb)
{
 struct batadv_hard_iface *primary_if = ((void*)0);
 int portid = NETLINK_CB(cb->skb).portid;
 struct batadv_priv *bat_priv;
 long *bucket = &cb->args[0];
 long *idx = &cb->args[1];
 int ret;

 ret = batadv_mcast_netlink_get_primary(cb, &primary_if);
 if (ret)
  return ret;

 bat_priv = netdev_priv(primary_if->soft_iface);
 ret = __batadv_mcast_flags_dump(msg, portid, cb, bat_priv, bucket, idx);

 batadv_hardif_put(primary_if);
 return ret;
}
