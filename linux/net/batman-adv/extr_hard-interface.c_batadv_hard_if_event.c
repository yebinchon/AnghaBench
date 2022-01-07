
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct batadv_priv {TYPE_2__* algo_ops; } ;
struct batadv_hard_iface {int num_bcasts; int wifi_flags; int soft_iface; int net_dev; int if_status; int list; } ;
struct TYPE_3__ {int (* update_mac ) (struct batadv_hard_iface*) ;} ;
struct TYPE_4__ {TYPE_1__ iface; } ;


 int BATADV_IF_NOT_IN_USE ;
 int BATADV_NUM_BCASTS_WIRELESS ;






 unsigned long NETDEV_POST_TYPE_CHANGE ;

 unsigned long NETDEV_REGISTER ;


 int NOTIFY_DONE ;
 int batadv_check_known_mac_addr (int ) ;
 int batadv_debugfs_rename_hardif (struct batadv_hard_iface*) ;
 int batadv_hard_if_event_softif (unsigned long,struct net_device*) ;
 int batadv_hardif_activate_interface (struct batadv_hard_iface*) ;
 struct batadv_hard_iface* batadv_hardif_add_interface (struct net_device*) ;
 int batadv_hardif_deactivate_interface (struct batadv_hard_iface*) ;
 int batadv_hardif_generation ;
 struct batadv_hard_iface* batadv_hardif_get_by_netdev (struct net_device*) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 int batadv_hardif_remove_interface (struct batadv_hard_iface*) ;
 int batadv_is_wifi_hardif (struct batadv_hard_iface*) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_primary_if_update_addr (struct batadv_priv*,int *) ;
 scalar_t__ batadv_softif_is_valid (struct net_device*) ;
 int batadv_update_min_mtu (int ) ;
 int batadv_wifi_flags_evaluate (struct net_device*) ;
 int list_del_rcu (int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct batadv_priv* netdev_priv (int ) ;
 int stub1 (struct batadv_hard_iface*) ;

__attribute__((used)) static int batadv_hard_if_event(struct notifier_block *this,
    unsigned long event, void *ptr)
{
 struct net_device *net_dev = netdev_notifier_info_to_dev(ptr);
 struct batadv_hard_iface *hard_iface;
 struct batadv_hard_iface *primary_if = ((void*)0);
 struct batadv_priv *bat_priv;

 if (batadv_softif_is_valid(net_dev))
  return batadv_hard_if_event_softif(event, net_dev);

 hard_iface = batadv_hardif_get_by_netdev(net_dev);
 if (!hard_iface && (event == NETDEV_REGISTER ||
       event == NETDEV_POST_TYPE_CHANGE))
  hard_iface = batadv_hardif_add_interface(net_dev);

 if (!hard_iface)
  goto out;

 switch (event) {
 case 128:
  batadv_hardif_activate_interface(hard_iface);
  break;
 case 131:
 case 132:
  batadv_hardif_deactivate_interface(hard_iface);
  break;
 case 129:
 case 130:
  list_del_rcu(&hard_iface->list);
  batadv_hardif_generation++;

  batadv_hardif_remove_interface(hard_iface);
  break;
 case 135:
  if (hard_iface->soft_iface)
   batadv_update_min_mtu(hard_iface->soft_iface);
  break;
 case 136:
  if (hard_iface->if_status == BATADV_IF_NOT_IN_USE)
   goto hardif_put;

  batadv_check_known_mac_addr(hard_iface->net_dev);

  bat_priv = netdev_priv(hard_iface->soft_iface);
  bat_priv->algo_ops->iface.update_mac(hard_iface);

  primary_if = batadv_primary_if_get_selected(bat_priv);
  if (!primary_if)
   goto hardif_put;

  if (hard_iface == primary_if)
   batadv_primary_if_update_addr(bat_priv, ((void*)0));
  break;
 case 133:
  hard_iface->wifi_flags = batadv_wifi_flags_evaluate(net_dev);
  if (batadv_is_wifi_hardif(hard_iface))
   hard_iface->num_bcasts = BATADV_NUM_BCASTS_WIRELESS;
  break;
 case 134:
  batadv_debugfs_rename_hardif(hard_iface);
  break;
 default:
  break;
 }

hardif_put:
 batadv_hardif_put(hard_iface);
out:
 if (primary_if)
  batadv_hardif_put(primary_if);
 return NOTIFY_DONE;
}
