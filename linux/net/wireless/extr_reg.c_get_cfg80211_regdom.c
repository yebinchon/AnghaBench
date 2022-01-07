
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {int dummy; } ;


 int cfg80211_regdomain ;
 struct ieee80211_regdomain const* rcu_dereference_rtnl (int ) ;

__attribute__((used)) static const struct ieee80211_regdomain *get_cfg80211_regdom(void)
{
 return rcu_dereference_rtnl(cfg80211_regdomain);
}
