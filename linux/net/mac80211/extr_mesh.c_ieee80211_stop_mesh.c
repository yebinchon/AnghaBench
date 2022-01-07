
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int bc_buf; } ;
struct ieee80211_if_mesh {scalar_t__ mbss_changed; scalar_t__ wrkq_flags; int mesh_path_timer; int mesh_path_root_timer; int housekeeping_timer; TYPE_4__ ps; int beacon; scalar_t__ mesh_id_len; } ;
struct TYPE_10__ {struct ieee80211_if_mesh mesh; } ;
struct TYPE_8__ {int mtx; } ;
struct TYPE_6__ {int enable_beacon; } ;
struct TYPE_7__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_5__ u; TYPE_3__ wdev; int state; TYPE_2__ vif; int dev; struct ieee80211_local* local; } ;
struct ieee80211_local {int iff_allmultis; int fif_other_bss; int total_ps_buffered; } ;
struct beacon_data {int dummy; } ;


 int BSS_CHANGED_BEACON_ENABLED ;
 int RCU_INIT_POINTER (int ,int *) ;
 int SDATA_STATE_OFFCHANNEL_BEACON_STOPPED ;
 int atomic_dec (int *) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_configure_filter (struct ieee80211_local*) ;
 int ieee80211_free_keys (struct ieee80211_sub_if_data*,int) ;
 int kfree_rcu (struct beacon_data*,int ) ;
 int lockdep_is_held (int *) ;
 int mesh_path_flush_by_iface (struct ieee80211_sub_if_data*) ;
 int netif_carrier_off (int ) ;
 struct beacon_data* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_purge (int *) ;
 int sta_info_flush (struct ieee80211_sub_if_data*) ;

void ieee80211_stop_mesh(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 struct beacon_data *bcn;

 netif_carrier_off(sdata->dev);


 sta_info_flush(sdata);
 ieee80211_free_keys(sdata, 1);
 mesh_path_flush_by_iface(sdata);


 ifmsh->mesh_id_len = 0;
 sdata->vif.bss_conf.enable_beacon = 0;
 clear_bit(SDATA_STATE_OFFCHANNEL_BEACON_STOPPED, &sdata->state);
 ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_BEACON_ENABLED);


 bcn = rcu_dereference_protected(ifmsh->beacon,
     lockdep_is_held(&sdata->wdev.mtx));
 RCU_INIT_POINTER(ifmsh->beacon, ((void*)0));
 kfree_rcu(bcn, rcu_head);


 local->total_ps_buffered -= skb_queue_len(&ifmsh->ps.bc_buf);
 skb_queue_purge(&ifmsh->ps.bc_buf);

 del_timer_sync(&sdata->u.mesh.housekeeping_timer);
 del_timer_sync(&sdata->u.mesh.mesh_path_root_timer);
 del_timer_sync(&sdata->u.mesh.mesh_path_timer);


 ifmsh->wrkq_flags = 0;
 ifmsh->mbss_changed = 0;

 local->fif_other_bss--;
 atomic_dec(&local->iff_allmultis);
 ieee80211_configure_filter(local);
}
