
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;


 int ASSERT_RTNL () ;
 int __regulatory_set_wiphy_regd (struct wiphy*,struct ieee80211_regdomain*) ;
 int reg_process_self_managed_hints () ;

int regulatory_set_wiphy_regd_sync_rtnl(struct wiphy *wiphy,
     struct ieee80211_regdomain *rd)
{
 int ret;

 ASSERT_RTNL();

 ret = __regulatory_set_wiphy_regd(wiphy, rd);
 if (ret)
  return ret;


 reg_process_self_managed_hints();
 return 0;
}
