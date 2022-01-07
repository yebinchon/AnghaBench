
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_ampdu_tx {int state; } ;
struct sta_info {struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int dummy; } ;


 int HT_AGG_STATE_DRV_READY ;
 int HT_AGG_STATE_RESPONSE_RECEIVED ;
 scalar_t__ WARN_ON (int ) ;
 int ieee80211_agg_tx_operational (struct ieee80211_local*,struct sta_info*,int) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void ieee80211_start_tx_ba_cb(struct sta_info *sta, int tid,
         struct tid_ampdu_tx *tid_tx)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;

 if (WARN_ON(test_and_set_bit(HT_AGG_STATE_DRV_READY, &tid_tx->state)))
  return;

 if (test_bit(HT_AGG_STATE_RESPONSE_RECEIVED, &tid_tx->state))
  ieee80211_agg_tx_operational(local, sta, tid);
}
