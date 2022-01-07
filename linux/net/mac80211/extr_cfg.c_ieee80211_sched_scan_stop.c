
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_local {TYPE_1__* ops; } ;
struct TYPE_2__ {int sched_scan_stop; } ;


 int EOPNOTSUPP ;
 int ieee80211_request_sched_scan_stop (struct ieee80211_local*) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int
ieee80211_sched_scan_stop(struct wiphy *wiphy, struct net_device *dev,
     u64 reqid)
{
 struct ieee80211_local *local = wiphy_priv(wiphy);

 if (!local->ops->sched_scan_stop)
  return -EOPNOTSUPP;

 return ieee80211_request_sched_scan_stop(local);
}
