
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_roc_work {int notified; unsigned long start_time; int started; int req_duration; TYPE_2__* chan; int cookie; TYPE_1__* sdata; int * frame; scalar_t__ mgmt_tx_cookie; } ;
struct TYPE_4__ {int band; } ;
struct TYPE_3__ {int wdev; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_ready_on_channel (int *,int ,TYPE_2__*,int ,int ) ;
 int ieee80211_tx_skb_tid_band (TYPE_1__*,int *,int,int ,int ) ;

__attribute__((used)) static void ieee80211_handle_roc_started(struct ieee80211_roc_work *roc,
      unsigned long start_time)
{
 if (WARN_ON(roc->notified))
  return;

 roc->start_time = start_time;
 roc->started = 1;

 if (roc->mgmt_tx_cookie) {
  if (!WARN_ON(!roc->frame)) {
   ieee80211_tx_skb_tid_band(roc->sdata, roc->frame, 7,
        roc->chan->band, 0);
   roc->frame = ((void*)0);
  }
 } else {
  cfg80211_ready_on_channel(&roc->sdata->wdev, roc->cookie,
       roc->chan, roc->req_duration,
       GFP_KERNEL);
 }

 roc->notified = 1;
}
