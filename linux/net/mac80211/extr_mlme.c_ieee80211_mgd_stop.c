
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_if_managed {int timer; int teardown_lock; scalar_t__ assoc_req_ies_len; int * assoc_req_ies; int * orig_teardown_skb; int * teardown_skb; scalar_t__ auth_data; TYPE_2__* assoc_data; int tdls_peer_del_work; int chswitch_work; int csa_connection_drop_work; int request_smps_work; int beacon_connection_loss_work; int monitor_work; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int dev; TYPE_1__ u; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_4__ {struct cfg80211_bss* bss; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int cfg80211_assoc_timeout (int ,struct cfg80211_bss*) ;
 int del_timer_sync (int *) ;
 int ieee80211_destroy_assoc_data (struct ieee80211_sub_if_data*,int,int) ;
 int ieee80211_destroy_auth_data (struct ieee80211_sub_if_data*,int) ;
 int kfree (int *) ;
 int kfree_skb (int *) ;
 int sdata_lock (struct ieee80211_sub_if_data*) ;
 int sdata_unlock (struct ieee80211_sub_if_data*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ieee80211_mgd_stop(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;






 cancel_work_sync(&ifmgd->monitor_work);
 cancel_work_sync(&ifmgd->beacon_connection_loss_work);
 cancel_work_sync(&ifmgd->request_smps_work);
 cancel_work_sync(&ifmgd->csa_connection_drop_work);
 cancel_work_sync(&ifmgd->chswitch_work);
 cancel_delayed_work_sync(&ifmgd->tdls_peer_del_work);

 sdata_lock(sdata);
 if (ifmgd->assoc_data) {
  struct cfg80211_bss *bss = ifmgd->assoc_data->bss;
  ieee80211_destroy_assoc_data(sdata, 0, 0);
  cfg80211_assoc_timeout(sdata->dev, bss);
 }
 if (ifmgd->auth_data)
  ieee80211_destroy_auth_data(sdata, 0);
 spin_lock_bh(&ifmgd->teardown_lock);
 if (ifmgd->teardown_skb) {
  kfree_skb(ifmgd->teardown_skb);
  ifmgd->teardown_skb = ((void*)0);
  ifmgd->orig_teardown_skb = ((void*)0);
 }
 kfree(ifmgd->assoc_req_ies);
 ifmgd->assoc_req_ies = ((void*)0);
 ifmgd->assoc_req_ies_len = 0;
 spin_unlock_bh(&ifmgd->teardown_lock);
 del_timer_sync(&ifmgd->timer);
 sdata_unlock(sdata);
}
