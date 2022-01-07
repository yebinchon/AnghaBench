
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int mtx; int sched_scan_sdata; } ;
struct cfg80211_sched_scan_request {int dummy; } ;


 int EBUSY ;
 int __ieee80211_request_sched_scan_start (struct ieee80211_sub_if_data*,struct cfg80211_sched_scan_request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rcu_access_pointer (int ) ;

int ieee80211_request_sched_scan_start(struct ieee80211_sub_if_data *sdata,
           struct cfg80211_sched_scan_request *req)
{
 struct ieee80211_local *local = sdata->local;
 int ret;

 mutex_lock(&local->mtx);

 if (rcu_access_pointer(local->sched_scan_sdata)) {
  mutex_unlock(&local->mtx);
  return -EBUSY;
 }

 ret = __ieee80211_request_sched_scan_start(sdata, req);

 mutex_unlock(&local->mtx);
 return ret;
}
