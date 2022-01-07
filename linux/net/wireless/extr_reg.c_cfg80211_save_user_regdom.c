
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {int dummy; } ;


 int ASSERT_RTNL () ;
 int IS_ERR (int ) ;
 int cfg80211_user_regdom ;
 int kfree (int ) ;
 int reg_copy_regd (struct ieee80211_regdomain const*) ;

__attribute__((used)) static void cfg80211_save_user_regdom(const struct ieee80211_regdomain *rd)
{
 ASSERT_RTNL();

 if (!IS_ERR(cfg80211_user_regdom))
  kfree(cfg80211_user_regdom);
 cfg80211_user_regdom = reg_copy_regd(rd);
}
