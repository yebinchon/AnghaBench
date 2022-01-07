
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tid_ampdu_tx {int state; } ;
struct TYPE_2__ {int work; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; } ;


 int HT_AGG_STATE_START_CB ;
 struct tid_ampdu_tx* ieee80211_lookup_tid_tx (struct ieee80211_sub_if_data*,int const*,int ,struct sta_info**) ;
 int ieee80211_queue_work (int *,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (int ,int *) ;
 int trace_api_start_tx_ba_cb (struct ieee80211_sub_if_data*,int const*,int ) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_start_tx_ba_cb_irqsafe(struct ieee80211_vif *vif,
          const u8 *ra, u16 tid)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta;
 struct tid_ampdu_tx *tid_tx;

 trace_api_start_tx_ba_cb(sdata, ra, tid);

 rcu_read_lock();
 tid_tx = ieee80211_lookup_tid_tx(sdata, ra, tid, &sta);
 if (!tid_tx)
  goto out;

 set_bit(HT_AGG_STATE_START_CB, &tid_tx->state);
 ieee80211_queue_work(&local->hw, &sta->ampdu_mlme.work);
 out:
 rcu_read_unlock();
}
