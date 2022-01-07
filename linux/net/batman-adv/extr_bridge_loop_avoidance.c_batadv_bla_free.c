
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * backbone_hash; int * claim_hash; int work; } ;
struct batadv_priv {TYPE_1__ bla; } ;
struct batadv_hard_iface {int dummy; } ;


 int batadv_bla_purge_backbone_gw (struct batadv_priv*,int) ;
 int batadv_bla_purge_claims (struct batadv_priv*,struct batadv_hard_iface*,int) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 int batadv_hash_destroy (int *) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int cancel_delayed_work_sync (int *) ;

void batadv_bla_free(struct batadv_priv *bat_priv)
{
 struct batadv_hard_iface *primary_if;

 cancel_delayed_work_sync(&bat_priv->bla.work);
 primary_if = batadv_primary_if_get_selected(bat_priv);

 if (bat_priv->bla.claim_hash) {
  batadv_bla_purge_claims(bat_priv, primary_if, 1);
  batadv_hash_destroy(bat_priv->bla.claim_hash);
  bat_priv->bla.claim_hash = ((void*)0);
 }
 if (bat_priv->bla.backbone_hash) {
  batadv_bla_purge_backbone_gw(bat_priv, 1);
  batadv_hash_destroy(bat_priv->bla.backbone_hash);
  bat_priv->bla.backbone_hash = ((void*)0);
 }
 if (primary_if)
  batadv_hardif_put(primary_if);
}
