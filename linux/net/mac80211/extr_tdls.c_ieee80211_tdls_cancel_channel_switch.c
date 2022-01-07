
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct sta_info {int sta; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int sta_mtx; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int WLAN_STA_TDLS_OFF_CHANNEL ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int drv_tdls_cancel_channel_switch (struct ieee80211_local*,struct ieee80211_sub_if_data*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int const*) ;
 int tdls_dbg (struct ieee80211_sub_if_data*,char*,int const*) ;
 int test_sta_flag (struct sta_info*,int ) ;

void
ieee80211_tdls_cancel_channel_switch(struct wiphy *wiphy,
         struct net_device *dev,
         const u8 *addr)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta;

 mutex_lock(&local->sta_mtx);
 sta = sta_info_get(sdata, addr);
 if (!sta) {
  tdls_dbg(sdata,
    "Invalid TDLS peer %pM for channel switch cancel\n",
    addr);
  goto out;
 }

 if (!test_sta_flag(sta, WLAN_STA_TDLS_OFF_CHANNEL)) {
  tdls_dbg(sdata, "TDLS channel switch not initiated by %pM\n",
    addr);
  goto out;
 }

 drv_tdls_cancel_channel_switch(local, sdata, &sta->sta);
 clear_sta_flag(sta, WLAN_STA_TDLS_OFF_CHANNEL);

out:
 mutex_unlock(&local->sta_mtx);
}
