
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 scalar_t__ STA_STATS_LEN ;
 scalar_t__ drv_get_et_sset_count (struct ieee80211_sub_if_data*,int) ;

__attribute__((used)) static int ieee80211_get_sset_count(struct net_device *dev, int sset)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 int rv = 0;

 if (sset == ETH_SS_STATS)
  rv += STA_STATS_LEN;

 rv += drv_get_et_sset_count(sdata, sset);

 if (rv == 0)
  return -EOPNOTSUPP;
 return rv;
}
