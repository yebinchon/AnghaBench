
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int mcast_handler_lock; struct batadv_priv* bat_priv; } ;


 int BATADV_MCAST_WANT_NO_RTR4 ;
 int BATADV_MCAST_WANT_NO_RTR6 ;
 int BATADV_NO_FLAGS ;
 int batadv_mcast_want_ipv4_update (struct batadv_priv*,struct batadv_orig_node*,int ) ;
 int batadv_mcast_want_ipv6_update (struct batadv_priv*,struct batadv_orig_node*,int ) ;
 int batadv_mcast_want_rtr4_update (struct batadv_priv*,struct batadv_orig_node*,int ) ;
 int batadv_mcast_want_rtr6_update (struct batadv_priv*,struct batadv_orig_node*,int ) ;
 int batadv_mcast_want_unsnoop_update (struct batadv_priv*,struct batadv_orig_node*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void batadv_mcast_purge_orig(struct batadv_orig_node *orig)
{
 struct batadv_priv *bat_priv = orig->bat_priv;

 spin_lock_bh(&orig->mcast_handler_lock);

 batadv_mcast_want_unsnoop_update(bat_priv, orig, BATADV_NO_FLAGS);
 batadv_mcast_want_ipv4_update(bat_priv, orig, BATADV_NO_FLAGS);
 batadv_mcast_want_ipv6_update(bat_priv, orig, BATADV_NO_FLAGS);
 batadv_mcast_want_rtr4_update(bat_priv, orig,
          BATADV_MCAST_WANT_NO_RTR4);
 batadv_mcast_want_rtr6_update(bat_priv, orig,
          BATADV_MCAST_WANT_NO_RTR6);

 spin_unlock_bh(&orig->mcast_handler_lock);
}
