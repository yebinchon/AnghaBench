
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int addr; } ;
struct sta_info {TYPE_4__* mesh; TYPE_1__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_6__ {int user_mpm; } ;
struct TYPE_7__ {TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; } ;
struct TYPE_8__ {int plink_timer; int plink_lock; int reason; int plid; int llid; } ;


 int WLAN_REASON_MESH_PEER_CANCELED ;
 int WLAN_SP_MESH_PEERING_CLOSE ;
 int __mesh_plink_deactivate (struct sta_info*) ;
 int del_timer_sync (int *) ;
 int mesh_path_flush_by_nexthop (struct sta_info*) ;
 int mesh_plink_frame_tx (struct ieee80211_sub_if_data*,struct sta_info*,int ,int ,int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_net () ;

u32 mesh_plink_deactivate(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 u32 changed;

 spin_lock_bh(&sta->mesh->plink_lock);
 changed = __mesh_plink_deactivate(sta);

 if (!sdata->u.mesh.user_mpm) {
  sta->mesh->reason = WLAN_REASON_MESH_PEER_CANCELED;
  mesh_plink_frame_tx(sdata, sta, WLAN_SP_MESH_PEERING_CLOSE,
        sta->sta.addr, sta->mesh->llid,
        sta->mesh->plid, sta->mesh->reason);
 }
 spin_unlock_bh(&sta->mesh->plink_lock);
 if (!sdata->u.mesh.user_mpm)
  del_timer_sync(&sta->mesh->plink_timer);
 mesh_path_flush_by_nexthop(sta);


 synchronize_net();

 return changed;
}
