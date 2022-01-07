
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int mtx; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
struct ieee80211_addba_ext_ie {int dummy; } ;


 int ___ieee80211_start_rx_ba_session (struct sta_info*,int ,int ,int ,int ,int ,int ,int,int,struct ieee80211_addba_ext_ie const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __ieee80211_start_rx_ba_session(struct sta_info *sta,
         u8 dialog_token, u16 timeout,
         u16 start_seq_num, u16 ba_policy,
         u16 tid, u16 buf_size, bool tx,
         bool auto_seq,
         const struct ieee80211_addba_ext_ie *addbaext)
{
 mutex_lock(&sta->ampdu_mlme.mtx);
 ___ieee80211_start_rx_ba_session(sta, dialog_token, timeout,
      start_seq_num, ba_policy, tid,
      buf_size, tx, auto_seq, addbaext);
 mutex_unlock(&sta->ampdu_mlme.mtx);
}
