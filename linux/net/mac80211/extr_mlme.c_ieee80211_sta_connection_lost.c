
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_sub_if_data {int dummy; } ;
typedef int frame_buf ;


 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_STYPE_DEAUTH ;
 int ieee80211_report_disconnect (struct ieee80211_sub_if_data*,int *,int,int,int ) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;

__attribute__((used)) static void ieee80211_sta_connection_lost(struct ieee80211_sub_if_data *sdata,
       u8 *bssid, u8 reason, bool tx)
{
 u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];

 ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH, reason,
          tx, frame_buf);

 ieee80211_report_disconnect(sdata, frame_buf, sizeof(frame_buf), 1,
        reason);
}
