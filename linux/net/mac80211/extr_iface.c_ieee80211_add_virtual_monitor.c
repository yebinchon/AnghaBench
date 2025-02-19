
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* iftype; } ;
struct TYPE_4__ {void* type; } ;
struct ieee80211_sub_if_data {int work; int skb_queue; int encrypt_headroom; TYPE_2__ wdev; int name; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_6__ {int wiphy; scalar_t__ vif_data_size; } ;
struct ieee80211_local {int iflist_mtx; scalar_t__ monitor_sdata; int mtx; int monitor_chandef; TYPE_3__ hw; } ;


 int ASSERT_RTNL () ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_CHANCTX_EXCLUSIVE ;
 int IEEE80211_ENCRYPT_HEADROOM ;
 int IFNAMSIZ ;
 int INIT_WORK (int *,int ) ;
 void* NL80211_IFTYPE_MONITOR ;
 int RCU_INIT_POINTER (scalar_t__,int *) ;
 int WANT_MONITOR_VIF ;
 scalar_t__ WARN_ON (int) ;
 int drv_add_interface (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int drv_remove_interface (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int ieee80211_check_queues (struct ieee80211_sub_if_data*,void*) ;
 int ieee80211_hw_check (TYPE_3__*,int ) ;
 int ieee80211_iface_work ;
 int ieee80211_set_default_queues (struct ieee80211_sub_if_data*) ;
 int ieee80211_vif_use_channel (struct ieee80211_sub_if_data*,int *,int ) ;
 int kfree (struct ieee80211_sub_if_data*) ;
 struct ieee80211_sub_if_data* kzalloc (scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (scalar_t__,struct ieee80211_sub_if_data*) ;
 int skb_queue_head_init (int *) ;
 int snprintf (int ,int ,char*,char*) ;
 int synchronize_net () ;
 char* wiphy_name (int ) ;

int ieee80211_add_virtual_monitor(struct ieee80211_local *local)
{
 struct ieee80211_sub_if_data *sdata;
 int ret;

 if (!ieee80211_hw_check(&local->hw, WANT_MONITOR_VIF))
  return 0;

 ASSERT_RTNL();

 if (local->monitor_sdata)
  return 0;

 sdata = kzalloc(sizeof(*sdata) + local->hw.vif_data_size, GFP_KERNEL);
 if (!sdata)
  return -ENOMEM;


 sdata->local = local;
 sdata->vif.type = NL80211_IFTYPE_MONITOR;
 snprintf(sdata->name, IFNAMSIZ, "%s-monitor",
   wiphy_name(local->hw.wiphy));
 sdata->wdev.iftype = NL80211_IFTYPE_MONITOR;

 sdata->encrypt_headroom = IEEE80211_ENCRYPT_HEADROOM;

 ieee80211_set_default_queues(sdata);

 ret = drv_add_interface(local, sdata);
 if (WARN_ON(ret)) {

  kfree(sdata);
  return ret;
 }

 ret = ieee80211_check_queues(sdata, NL80211_IFTYPE_MONITOR);
 if (ret) {
  kfree(sdata);
  return ret;
 }

 mutex_lock(&local->iflist_mtx);
 rcu_assign_pointer(local->monitor_sdata, sdata);
 mutex_unlock(&local->iflist_mtx);

 mutex_lock(&local->mtx);
 ret = ieee80211_vif_use_channel(sdata, &local->monitor_chandef,
     IEEE80211_CHANCTX_EXCLUSIVE);
 mutex_unlock(&local->mtx);
 if (ret) {
  mutex_lock(&local->iflist_mtx);
  RCU_INIT_POINTER(local->monitor_sdata, ((void*)0));
  mutex_unlock(&local->iflist_mtx);
  synchronize_net();
  drv_remove_interface(local, sdata);
  kfree(sdata);
  return ret;
 }

 skb_queue_head_init(&sdata->skb_queue);
 INIT_WORK(&sdata->work, ieee80211_iface_work);

 return 0;
}
