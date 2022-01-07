
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int mtx; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
typedef enum ieee80211_agg_stop_reason { ____Placeholder_ieee80211_agg_stop_reason } ieee80211_agg_stop_reason ;


 int ___ieee80211_stop_tx_ba_session (struct sta_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int __ieee80211_stop_tx_ba_session(struct sta_info *sta, u16 tid,
       enum ieee80211_agg_stop_reason reason)
{
 int ret;

 mutex_lock(&sta->ampdu_mlme.mtx);

 ret = ___ieee80211_stop_tx_ba_session(sta, tid, reason);

 mutex_unlock(&sta->ampdu_mlme.mtx);

 return ret;
}
