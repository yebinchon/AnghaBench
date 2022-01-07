
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_changeset; int work; } ;
struct batadv_priv {TYPE_1__ tt; } ;


 int BATADV_TVLV_ROAM ;
 int BATADV_TVLV_TT ;
 int batadv_tt_changes_list_free (struct batadv_priv*) ;
 int batadv_tt_global_table_free (struct batadv_priv*) ;
 int batadv_tt_local_table_free (struct batadv_priv*) ;
 int batadv_tt_req_list_free (struct batadv_priv*) ;
 int batadv_tt_roam_list_free (struct batadv_priv*) ;
 int batadv_tvlv_container_unregister (struct batadv_priv*,int ,int) ;
 int batadv_tvlv_handler_unregister (struct batadv_priv*,int ,int) ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (int ) ;

void batadv_tt_free(struct batadv_priv *bat_priv)
{
 batadv_tvlv_handler_unregister(bat_priv, BATADV_TVLV_ROAM, 1);

 batadv_tvlv_container_unregister(bat_priv, BATADV_TVLV_TT, 1);
 batadv_tvlv_handler_unregister(bat_priv, BATADV_TVLV_TT, 1);

 cancel_delayed_work_sync(&bat_priv->tt.work);

 batadv_tt_local_table_free(bat_priv);
 batadv_tt_global_table_free(bat_priv);
 batadv_tt_req_list_free(bat_priv);
 batadv_tt_changes_list_free(bat_priv);
 batadv_tt_roam_list_free(bat_priv);

 kfree(bat_priv->tt.last_changeset);
}
