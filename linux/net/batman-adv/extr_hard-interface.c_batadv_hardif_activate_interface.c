
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct batadv_priv {TYPE_3__* algo_ops; } ;
struct batadv_hard_iface {scalar_t__ if_status; int soft_iface; TYPE_1__* net_dev; } ;
struct TYPE_5__ {int (* activate ) (struct batadv_hard_iface*) ;int (* update_mac ) (struct batadv_hard_iface*) ;} ;
struct TYPE_6__ {TYPE_2__ iface; } ;
struct TYPE_4__ {int name; } ;


 scalar_t__ BATADV_IF_INACTIVE ;
 scalar_t__ BATADV_IF_TO_BE_ACTIVATED ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 int batadv_info (int ,char*,int ) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_primary_if_select (struct batadv_priv*,struct batadv_hard_iface*) ;
 int batadv_update_min_mtu (int ) ;
 struct batadv_priv* netdev_priv (int ) ;
 int stub1 (struct batadv_hard_iface*) ;
 int stub2 (struct batadv_hard_iface*) ;

__attribute__((used)) static void
batadv_hardif_activate_interface(struct batadv_hard_iface *hard_iface)
{
 struct batadv_priv *bat_priv;
 struct batadv_hard_iface *primary_if = ((void*)0);

 if (hard_iface->if_status != BATADV_IF_INACTIVE)
  goto out;

 bat_priv = netdev_priv(hard_iface->soft_iface);

 bat_priv->algo_ops->iface.update_mac(hard_iface);
 hard_iface->if_status = BATADV_IF_TO_BE_ACTIVATED;




 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (!primary_if)
  batadv_primary_if_select(bat_priv, hard_iface);

 batadv_info(hard_iface->soft_iface, "Interface activated: %s\n",
      hard_iface->net_dev->name);

 batadv_update_min_mtu(hard_iface->soft_iface);

 if (bat_priv->algo_ops->iface.activate)
  bat_priv->algo_ops->iface.activate(hard_iface);

out:
 if (primary_if)
  batadv_hardif_put(primary_if);
}
