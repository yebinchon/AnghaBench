
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int mtx; int sched_scan_sdata; int sched_scan_req; TYPE_1__* ops; } ;
struct TYPE_2__ {int sched_scan_stop; } ;


 int ENOENT ;
 int ENOTSUPP ;
 int RCU_INIT_POINTER (int ,int *) ;
 int drv_sched_scan_stop (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_sub_if_data* rcu_dereference_protected (int ,int ) ;

int ieee80211_request_sched_scan_stop(struct ieee80211_local *local)
{
 struct ieee80211_sub_if_data *sched_scan_sdata;
 int ret = -ENOENT;

 mutex_lock(&local->mtx);

 if (!local->ops->sched_scan_stop) {
  ret = -ENOTSUPP;
  goto out;
 }


 RCU_INIT_POINTER(local->sched_scan_req, ((void*)0));

 sched_scan_sdata = rcu_dereference_protected(local->sched_scan_sdata,
      lockdep_is_held(&local->mtx));
 if (sched_scan_sdata) {
  ret = drv_sched_scan_stop(local, sched_scan_sdata);
  if (!ret)
   RCU_INIT_POINTER(local->sched_scan_sdata, ((void*)0));
 }
out:
 mutex_unlock(&local->mtx);

 return ret;
}
