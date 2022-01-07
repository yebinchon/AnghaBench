
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int commit_lock; } ;
struct batadv_priv {TYPE_1__ tt; int packet_size_max; } ;


 int BATADV_TT_LOCAL_TIMEOUT ;
 int atomic_read (int *) ;
 int batadv_info ;
 int batadv_tt_local_commit_changes_nolock (struct batadv_priv*) ;
 int batadv_tt_local_purge (struct batadv_priv*,int) ;
 int batadv_tt_local_purge_pending_clients (struct batadv_priv*) ;
 int batadv_tt_local_table_transmit_size (struct batadv_priv*) ;
 int net_ratelimited_function (int ,struct net_device*,char*,int) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void batadv_tt_local_resize_to_mtu(struct net_device *soft_iface)
{
 struct batadv_priv *bat_priv = netdev_priv(soft_iface);
 int packet_size_max = atomic_read(&bat_priv->packet_size_max);
 int table_size, timeout = BATADV_TT_LOCAL_TIMEOUT / 2;
 bool reduced = 0;

 spin_lock_bh(&bat_priv->tt.commit_lock);

 while (1) {
  table_size = batadv_tt_local_table_transmit_size(bat_priv);
  if (packet_size_max >= table_size)
   break;

  batadv_tt_local_purge(bat_priv, timeout);
  batadv_tt_local_purge_pending_clients(bat_priv);

  timeout /= 2;
  reduced = 1;
  net_ratelimited_function(batadv_info, soft_iface,
      "Forced to purge local tt entries to fit new maximum fragment MTU (%i)\n",
      packet_size_max);
 }




 if (reduced)
  batadv_tt_local_commit_changes_nolock(bat_priv);

 spin_unlock_bh(&bat_priv->tt.commit_lock);
}
