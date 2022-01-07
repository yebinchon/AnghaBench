
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int dummy; } ;
struct cfg80211_ftm_responder_stats {int dummy; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int drv_get_ftm_responder_stats (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_ftm_responder_stats*) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int
ieee80211_get_ftm_responder_stats(struct wiphy *wiphy,
      struct net_device *dev,
      struct cfg80211_ftm_responder_stats *ftm_stats)
{
 struct ieee80211_local *local = wiphy_priv(wiphy);
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);

 return drv_get_ftm_responder_stats(local, sdata, ftm_stats);
}
