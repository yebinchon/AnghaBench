
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {TYPE_1__* ops; } ;
struct cfg80211_gtk_rekey_data {int dummy; } ;
struct TYPE_2__ {int set_rekey_data; } ;


 int EOPNOTSUPP ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int drv_set_rekey_data (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_gtk_rekey_data*) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int ieee80211_set_rekey_data(struct wiphy *wiphy,
        struct net_device *dev,
        struct cfg80211_gtk_rekey_data *data)
{
 struct ieee80211_local *local = wiphy_priv(wiphy);
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);

 if (!local->ops->set_rekey_data)
  return -EOPNOTSUPP;

 drv_set_rekey_data(local, sdata, data);

 return 0;
}
