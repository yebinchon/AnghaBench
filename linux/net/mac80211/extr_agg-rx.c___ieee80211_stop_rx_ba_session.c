
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int mtx; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;


 int ___ieee80211_stop_rx_ba_session (struct sta_info*,int ,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void __ieee80211_stop_rx_ba_session(struct sta_info *sta, u16 tid,
        u16 initiator, u16 reason, bool tx)
{
 mutex_lock(&sta->ampdu_mlme.mtx);
 ___ieee80211_stop_rx_ba_session(sta, tid, initiator, reason, tx);
 mutex_unlock(&sta->ampdu_mlme.mtx);
}
