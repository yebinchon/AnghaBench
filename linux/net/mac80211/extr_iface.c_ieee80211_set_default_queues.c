
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* hw_queue; void* cab_queue; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_4__ {int queues; } ;
struct ieee80211_local {TYPE_2__ hw; } ;


 void* IEEE80211_INVAL_HW_QUEUE ;
 int IEEE80211_NUM_ACS ;
 int QUEUE_CONTROL ;
 scalar_t__ ieee80211_hw_check (TYPE_2__*,int ) ;

__attribute__((used)) static void ieee80211_set_default_queues(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 int i;

 for (i = 0; i < IEEE80211_NUM_ACS; i++) {
  if (ieee80211_hw_check(&local->hw, QUEUE_CONTROL))
   sdata->vif.hw_queue[i] = IEEE80211_INVAL_HW_QUEUE;
  else if (local->hw.queues >= IEEE80211_NUM_ACS)
   sdata->vif.hw_queue[i] = i;
  else
   sdata->vif.hw_queue[i] = 0;
 }
 sdata->vif.cab_queue = IEEE80211_INVAL_HW_QUEUE;
}
