
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int dummy; } ;
struct cfg80211_pmsr_request {int dummy; } ;


 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 int drv_start_pmsr (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_pmsr_request*) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int
ieee80211_start_pmsr(struct wiphy *wiphy, struct wireless_dev *dev,
       struct cfg80211_pmsr_request *request)
{
 struct ieee80211_local *local = wiphy_priv(wiphy);
 struct ieee80211_sub_if_data *sdata = IEEE80211_WDEV_TO_SUB_IF(dev);

 return drv_start_pmsr(local, sdata, request);
}
