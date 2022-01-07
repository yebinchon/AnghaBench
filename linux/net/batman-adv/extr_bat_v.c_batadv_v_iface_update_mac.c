
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int soft_iface; } ;


 int batadv_hardif_put (struct batadv_hard_iface*) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_v_primary_iface_set (struct batadv_hard_iface*) ;
 struct batadv_priv* netdev_priv (int ) ;

__attribute__((used)) static void batadv_v_iface_update_mac(struct batadv_hard_iface *hard_iface)
{
 struct batadv_priv *bat_priv = netdev_priv(hard_iface->soft_iface);
 struct batadv_hard_iface *primary_if;

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (primary_if != hard_iface)
  goto out;

 batadv_v_primary_iface_set(hard_iface);
out:
 if (primary_if)
  batadv_hardif_put(primary_if);
}
