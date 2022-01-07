
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {int mla_lock; } ;
struct batadv_priv {TYPE_1__ mcast; struct net_device* soft_iface; } ;
struct batadv_mcast_mla_flags {int dummy; } ;


 struct hlist_head HLIST_HEAD_INIT ;
 int batadv_mcast_mla_bridge_get (struct net_device*,struct hlist_head*,struct batadv_mcast_mla_flags*) ;
 struct batadv_mcast_mla_flags batadv_mcast_mla_flags_get (struct batadv_priv*) ;
 int batadv_mcast_mla_flags_update (struct batadv_priv*,struct batadv_mcast_mla_flags*) ;
 int batadv_mcast_mla_list_free (struct hlist_head*) ;
 int batadv_mcast_mla_softif_get (struct net_device*,struct hlist_head*,struct batadv_mcast_mla_flags*) ;
 int batadv_mcast_mla_tt_add (struct batadv_priv*,struct hlist_head*) ;
 int batadv_mcast_mla_tt_retract (struct batadv_priv*,struct hlist_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __batadv_mcast_mla_update(struct batadv_priv *bat_priv)
{
 struct net_device *soft_iface = bat_priv->soft_iface;
 struct hlist_head mcast_list = HLIST_HEAD_INIT;
 struct batadv_mcast_mla_flags flags;
 int ret;

 flags = batadv_mcast_mla_flags_get(bat_priv);

 ret = batadv_mcast_mla_softif_get(soft_iface, &mcast_list, &flags);
 if (ret < 0)
  goto out;

 ret = batadv_mcast_mla_bridge_get(soft_iface, &mcast_list, &flags);
 if (ret < 0)
  goto out;

 spin_lock(&bat_priv->mcast.mla_lock);
 batadv_mcast_mla_tt_retract(bat_priv, &mcast_list);
 batadv_mcast_mla_tt_add(bat_priv, &mcast_list);
 batadv_mcast_mla_flags_update(bat_priv, &flags);
 spin_unlock(&bat_priv->mcast.mla_lock);

out:
 batadv_mcast_mla_list_free(&mcast_list);
}
