
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int mtx; } ;
struct ieee80211_channel {int dummy; } ;


 int IEEE80211_ROC_TYPE_NORMAL ;
 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 int ieee80211_start_roc_work (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_channel*,unsigned int,int *,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ieee80211_remain_on_channel(struct wiphy *wiphy, struct wireless_dev *wdev,
    struct ieee80211_channel *chan,
    unsigned int duration, u64 *cookie)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);
 struct ieee80211_local *local = sdata->local;
 int ret;

 mutex_lock(&local->mtx);
 ret = ieee80211_start_roc_work(local, sdata, chan,
           duration, cookie, ((void*)0),
           IEEE80211_ROC_TYPE_NORMAL);
 mutex_unlock(&local->mtx);

 return ret;
}
