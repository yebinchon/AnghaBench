
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; int mtx; int sched_scan_req; int sched_scan_sdata; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int cfg80211_sched_scan_stopped (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_access_pointer (int ) ;

void ieee80211_sched_scan_end(struct ieee80211_local *local)
{
 mutex_lock(&local->mtx);

 if (!rcu_access_pointer(local->sched_scan_sdata)) {
  mutex_unlock(&local->mtx);
  return;
 }

 RCU_INIT_POINTER(local->sched_scan_sdata, ((void*)0));


 RCU_INIT_POINTER(local->sched_scan_req, ((void*)0));

 mutex_unlock(&local->mtx);

 cfg80211_sched_scan_stopped(local->hw.wiphy, 0);
}
