
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int flags; struct ieee80211_vif vif; } ;


 int IEEE80211_SDATA_IN_DRIVER ;
 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;

struct ieee80211_vif *wdev_to_ieee80211_vif(struct wireless_dev *wdev)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);

 if (!ieee80211_sdata_running(sdata) ||
     !(sdata->flags & IEEE80211_SDATA_IN_DRIVER))
  return ((void*)0);
 return &sdata->vif;
}
