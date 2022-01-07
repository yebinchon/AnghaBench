
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int scan_work; int hw; int mtx; int scan_sdata; scalar_t__ scanning; int scan_req; } ;


 int ieee80211_can_scan (struct ieee80211_local*,int ) ;
 int ieee80211_queue_delayed_work (int *,int *,int ) ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 int rcu_dereference_protected (int ,int ) ;
 int round_jiffies_relative (int ) ;

void ieee80211_run_deferred_scan(struct ieee80211_local *local)
{
 lockdep_assert_held(&local->mtx);

 if (!local->scan_req || local->scanning)
  return;

 if (!ieee80211_can_scan(local,
    rcu_dereference_protected(
     local->scan_sdata,
     lockdep_is_held(&local->mtx))))
  return;

 ieee80211_queue_delayed_work(&local->hw, &local->scan_work,
         round_jiffies_relative(0));
}
