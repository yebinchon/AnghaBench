
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int work; int tid_rx_manage_offl; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; } ;


 int ieee80211_queue_work (int *,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (unsigned int,int ) ;
 struct sta_info* sta_info_get_bss (struct ieee80211_sub_if_data*,int const*) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_manage_rx_ba_offl(struct ieee80211_vif *vif,
     const u8 *addr, unsigned int tid)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta;

 rcu_read_lock();
 sta = sta_info_get_bss(sdata, addr);
 if (!sta)
  goto unlock;

 set_bit(tid, sta->ampdu_mlme.tid_rx_manage_offl);
 ieee80211_queue_work(&local->hw, &sta->ampdu_mlme.work);
 unlock:
 rcu_read_unlock();
}
