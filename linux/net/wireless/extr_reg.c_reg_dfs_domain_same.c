
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regd; } ;
struct ieee80211_regdomain {scalar_t__ dfs_region; } ;


 int cfg80211_regdomain ;
 struct ieee80211_regdomain* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool reg_dfs_domain_same(struct wiphy *wiphy1, struct wiphy *wiphy2)
{
 const struct ieee80211_regdomain *wiphy1_regd = ((void*)0);
 const struct ieee80211_regdomain *wiphy2_regd = ((void*)0);
 const struct ieee80211_regdomain *cfg80211_regd = ((void*)0);
 bool dfs_domain_same;

 rcu_read_lock();

 cfg80211_regd = rcu_dereference(cfg80211_regdomain);
 wiphy1_regd = rcu_dereference(wiphy1->regd);
 if (!wiphy1_regd)
  wiphy1_regd = cfg80211_regd;

 wiphy2_regd = rcu_dereference(wiphy2->regd);
 if (!wiphy2_regd)
  wiphy2_regd = cfg80211_regd;

 dfs_domain_same = wiphy1_regd->dfs_region == wiphy2_regd->dfs_region;

 rcu_read_unlock();

 return dfs_domain_same;
}
