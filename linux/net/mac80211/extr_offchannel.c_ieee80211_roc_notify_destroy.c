
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_roc_work {int list; int chan; int mgmt_tx_cookie; TYPE_2__* sdata; int cookie; TYPE_3__* frame; } ;
struct TYPE_6__ {int len; int data; } ;
struct TYPE_5__ {int wdev; TYPE_1__* local; } ;
struct TYPE_4__ {int hw; } ;


 int GFP_KERNEL ;
 int cfg80211_mgmt_tx_status (int *,int ,int ,int ,int,int ) ;
 int cfg80211_remain_on_channel_expired (int *,int ,int ,int ) ;
 int cfg80211_tx_mgmt_expired (int *,int ,int ,int ) ;
 int ieee80211_free_txskb (int *,TYPE_3__*) ;
 int kfree (struct ieee80211_roc_work*) ;
 int list_del (int *) ;

__attribute__((used)) static void ieee80211_roc_notify_destroy(struct ieee80211_roc_work *roc)
{

 if (roc->frame) {
  cfg80211_mgmt_tx_status(&roc->sdata->wdev, roc->mgmt_tx_cookie,
     roc->frame->data, roc->frame->len,
     0, GFP_KERNEL);
  ieee80211_free_txskb(&roc->sdata->local->hw, roc->frame);
 }

 if (!roc->mgmt_tx_cookie)
  cfg80211_remain_on_channel_expired(&roc->sdata->wdev,
         roc->cookie, roc->chan,
         GFP_KERNEL);
 else
  cfg80211_tx_mgmt_expired(&roc->sdata->wdev,
      roc->mgmt_tx_cookie,
      roc->chan, GFP_KERNEL);

 list_del(&roc->list);
 kfree(roc);
}
