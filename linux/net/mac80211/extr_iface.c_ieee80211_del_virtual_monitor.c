
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int mtx; int iflist_mtx; int monitor_sdata; int hw; } ;


 int ASSERT_RTNL () ;
 int RCU_INIT_POINTER (int ,int *) ;
 int WANT_MONITOR_VIF ;
 int drv_remove_interface (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int ieee80211_hw_check (int *,int ) ;
 int ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 int kfree (struct ieee80211_sub_if_data*) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_sub_if_data* rcu_dereference_protected (int ,int ) ;
 int synchronize_net () ;

void ieee80211_del_virtual_monitor(struct ieee80211_local *local)
{
 struct ieee80211_sub_if_data *sdata;

 if (!ieee80211_hw_check(&local->hw, WANT_MONITOR_VIF))
  return;

 ASSERT_RTNL();

 mutex_lock(&local->iflist_mtx);

 sdata = rcu_dereference_protected(local->monitor_sdata,
       lockdep_is_held(&local->iflist_mtx));
 if (!sdata) {
  mutex_unlock(&local->iflist_mtx);
  return;
 }

 RCU_INIT_POINTER(local->monitor_sdata, ((void*)0));
 mutex_unlock(&local->iflist_mtx);

 synchronize_net();

 mutex_lock(&local->mtx);
 ieee80211_vif_release_channel(sdata);
 mutex_unlock(&local->mtx);

 drv_remove_interface(local, sdata);

 kfree(sdata);
}
