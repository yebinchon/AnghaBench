
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int dummy; } ;


 int batadv_bla_update_orig_address (struct batadv_priv*,struct batadv_hard_iface*,struct batadv_hard_iface*) ;
 int batadv_dat_init_own_addr (struct batadv_priv*,struct batadv_hard_iface*) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;

__attribute__((used)) static void batadv_primary_if_update_addr(struct batadv_priv *bat_priv,
       struct batadv_hard_iface *oldif)
{
 struct batadv_hard_iface *primary_if;

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (!primary_if)
  goto out;

 batadv_dat_init_own_addr(bat_priv, primary_if);
 batadv_bla_update_orig_address(bat_priv, primary_if, oldif);
out:
 if (primary_if)
  batadv_hardif_put(primary_if);
}
