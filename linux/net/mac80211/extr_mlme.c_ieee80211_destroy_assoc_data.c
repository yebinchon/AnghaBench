
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct ieee80211_mgd_assoc_data* assoc_data; scalar_t__ flags; int bssid; int timer; } ;
struct TYPE_9__ {TYPE_3__ mgd; } ;
struct TYPE_6__ {int mu_mimo_owner; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; int dev; TYPE_2__* local; TYPE_1__ vif; } ;
struct ieee80211_mgd_assoc_data {TYPE_5__* bss; } ;
struct TYPE_10__ {int bssid; } ;
struct TYPE_7__ {int mtx; } ;


 int BSS_CHANGED_BSSID ;
 int cfg80211_abandon_assoc (int ,TYPE_5__*) ;
 int del_timer_sync (int *) ;
 int eth_zero_addr (int ) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 int kfree (struct ieee80211_mgd_assoc_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int sta_info_destroy_addr (struct ieee80211_sub_if_data*,int ) ;

__attribute__((used)) static void ieee80211_destroy_assoc_data(struct ieee80211_sub_if_data *sdata,
      bool assoc, bool abandon)
{
 struct ieee80211_mgd_assoc_data *assoc_data = sdata->u.mgd.assoc_data;

 sdata_assert_lock(sdata);

 if (!assoc) {





  del_timer_sync(&sdata->u.mgd.timer);
  sta_info_destroy_addr(sdata, assoc_data->bss->bssid);

  eth_zero_addr(sdata->u.mgd.bssid);
  ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_BSSID);
  sdata->u.mgd.flags = 0;
  sdata->vif.mu_mimo_owner = 0;

  mutex_lock(&sdata->local->mtx);
  ieee80211_vif_release_channel(sdata);
  mutex_unlock(&sdata->local->mtx);

  if (abandon)
   cfg80211_abandon_assoc(sdata->dev, assoc_data->bss);
 }

 kfree(assoc_data);
 sdata->u.mgd.assoc_data = ((void*)0);
}
