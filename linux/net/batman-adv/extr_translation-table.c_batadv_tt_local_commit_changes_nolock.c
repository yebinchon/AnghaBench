
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ogm_append_cnt; int vn; int local_changes; int commit_lock; } ;
struct batadv_priv {TYPE_1__ tt; } ;


 int BATADV_DBG_TT ;
 int BATADV_TT_CLIENT_NEW ;
 int BATADV_TT_OGM_APPEND_MAX ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int batadv_atomic_dec_not_zero (int *) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int ) ;
 int batadv_tt_local_purge_pending_clients (struct batadv_priv*) ;
 int batadv_tt_local_set_flags (struct batadv_priv*,int ,int,int) ;
 int batadv_tt_local_update_crc (struct batadv_priv*) ;
 int batadv_tt_tvlv_container_update (struct batadv_priv*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void batadv_tt_local_commit_changes_nolock(struct batadv_priv *bat_priv)
{
 lockdep_assert_held(&bat_priv->tt.commit_lock);

 if (atomic_read(&bat_priv->tt.local_changes) < 1) {
  if (!batadv_atomic_dec_not_zero(&bat_priv->tt.ogm_append_cnt))
   batadv_tt_tvlv_container_update(bat_priv);
  return;
 }

 batadv_tt_local_set_flags(bat_priv, BATADV_TT_CLIENT_NEW, 0, 1);

 batadv_tt_local_purge_pending_clients(bat_priv);
 batadv_tt_local_update_crc(bat_priv);


 atomic_inc(&bat_priv->tt.vn);
 batadv_dbg(BATADV_DBG_TT, bat_priv,
     "Local changes committed, updating to ttvn %u\n",
     (u8)atomic_read(&bat_priv->tt.vn));


 atomic_set(&bat_priv->tt.ogm_append_cnt, BATADV_TT_OGM_APPEND_MAX);
 batadv_tt_tvlv_container_update(bat_priv);
}
