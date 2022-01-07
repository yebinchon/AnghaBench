
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct ieee80211_mgd_auth_data* auth_data; scalar_t__ flags; int bssid; int timer; } ;
struct TYPE_9__ {TYPE_3__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__* local; } ;
struct ieee80211_mgd_auth_data {TYPE_5__* bss; } ;
struct TYPE_10__ {int bssid; } ;
struct TYPE_6__ {int wiphy; } ;
struct TYPE_7__ {TYPE_1__ hw; int mtx; } ;


 int BSS_CHANGED_BSSID ;
 int cfg80211_put_bss (int ,TYPE_5__*) ;
 int del_timer_sync (int *) ;
 int eth_zero_addr (int ) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 int kfree (struct ieee80211_mgd_auth_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int sta_info_destroy_addr (struct ieee80211_sub_if_data*,int ) ;

__attribute__((used)) static void ieee80211_destroy_auth_data(struct ieee80211_sub_if_data *sdata,
     bool assoc)
{
 struct ieee80211_mgd_auth_data *auth_data = sdata->u.mgd.auth_data;

 sdata_assert_lock(sdata);

 if (!assoc) {





  del_timer_sync(&sdata->u.mgd.timer);
  sta_info_destroy_addr(sdata, auth_data->bss->bssid);

  eth_zero_addr(sdata->u.mgd.bssid);
  ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_BSSID);
  sdata->u.mgd.flags = 0;
  mutex_lock(&sdata->local->mtx);
  ieee80211_vif_release_channel(sdata);
  mutex_unlock(&sdata->local->mtx);
 }

 cfg80211_put_bss(sdata->local->hw.wiphy, auth_data->bss);
 kfree(auth_data);
 sdata->u.mgd.auth_data = ((void*)0);
}
