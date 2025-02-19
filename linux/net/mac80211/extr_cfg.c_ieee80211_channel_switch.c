
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int mtx; } ;
struct cfg80211_csa_settings {int dummy; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int __ieee80211_channel_switch (struct wiphy*,struct net_device*,struct cfg80211_csa_settings*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ieee80211_channel_switch(struct wiphy *wiphy, struct net_device *dev,
        struct cfg80211_csa_settings *params)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 int err;

 mutex_lock(&local->mtx);
 err = __ieee80211_channel_switch(wiphy, dev, params);
 mutex_unlock(&local->mtx);

 return err;
}
