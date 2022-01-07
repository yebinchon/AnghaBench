
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int flags; struct wireless_dev wdev; } ;


 int IEEE80211_SDATA_IN_DRIVER ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

struct wireless_dev *ieee80211_vif_to_wdev(struct ieee80211_vif *vif)
{
 struct ieee80211_sub_if_data *sdata;

 if (!vif)
  return ((void*)0);

 sdata = vif_to_sdata(vif);

 if (!ieee80211_sdata_running(sdata) ||
     !(sdata->flags & IEEE80211_SDATA_IN_DRIVER))
  return ((void*)0);

 return &sdata->wdev;
}
