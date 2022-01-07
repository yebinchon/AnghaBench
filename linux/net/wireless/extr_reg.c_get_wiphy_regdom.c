
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regd; } ;
struct ieee80211_regdomain {int dummy; } ;


 struct ieee80211_regdomain const* rcu_dereference_rtnl (int ) ;

const struct ieee80211_regdomain *get_wiphy_regdom(struct wiphy *wiphy)
{
 return rcu_dereference_rtnl(wiphy->regd);
}
