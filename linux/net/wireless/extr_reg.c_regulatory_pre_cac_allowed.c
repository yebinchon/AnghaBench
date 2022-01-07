
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regd; } ;
struct ieee80211_regdomain {scalar_t__ dfs_region; } ;


 scalar_t__ NL80211_DFS_ETSI ;
 int cfg80211_regdomain ;
 struct ieee80211_regdomain* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool regulatory_pre_cac_allowed(struct wiphy *wiphy)
{
 const struct ieee80211_regdomain *regd = ((void*)0);
 const struct ieee80211_regdomain *wiphy_regd = ((void*)0);
 bool pre_cac_allowed = 0;

 rcu_read_lock();

 regd = rcu_dereference(cfg80211_regdomain);
 wiphy_regd = rcu_dereference(wiphy->regd);
 if (!wiphy_regd) {
  if (regd->dfs_region == NL80211_DFS_ETSI)
   pre_cac_allowed = 1;

  rcu_read_unlock();

  return pre_cac_allowed;
 }

 if (regd->dfs_region == wiphy_regd->dfs_region &&
     wiphy_regd->dfs_region == NL80211_DFS_ETSI)
  pre_cac_allowed = 1;

 rcu_read_unlock();

 return pre_cac_allowed;
}
