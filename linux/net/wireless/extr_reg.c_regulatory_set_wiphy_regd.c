
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;


 int __regulatory_set_wiphy_regd (struct wiphy*,struct ieee80211_regdomain*) ;
 int reg_work ;
 int schedule_work (int *) ;

int regulatory_set_wiphy_regd(struct wiphy *wiphy,
         struct ieee80211_regdomain *rd)
{
 int ret = __regulatory_set_wiphy_regd(wiphy, rd);

 if (ret)
  return ret;

 schedule_work(&reg_work);
 return 0;
}
