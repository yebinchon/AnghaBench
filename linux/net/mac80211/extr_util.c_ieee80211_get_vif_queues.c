
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* hw_queue; scalar_t__ cab_queue; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct TYPE_4__ {scalar_t__ queues; } ;
struct ieee80211_local {TYPE_2__ hw; } ;


 int BIT (scalar_t__) ;
 scalar_t__ IEEE80211_INVAL_HW_QUEUE ;
 int IEEE80211_NUM_ACS ;
 int QUEUE_CONTROL ;
 scalar_t__ ieee80211_hw_check (TYPE_2__*,int ) ;

__attribute__((used)) static unsigned int
ieee80211_get_vif_queues(struct ieee80211_local *local,
    struct ieee80211_sub_if_data *sdata)
{
 unsigned int queues;

 if (sdata && ieee80211_hw_check(&local->hw, QUEUE_CONTROL)) {
  int ac;

  queues = 0;

  for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
   queues |= BIT(sdata->vif.hw_queue[ac]);
  if (sdata->vif.cab_queue != IEEE80211_INVAL_HW_QUEUE)
   queues |= BIT(sdata->vif.cab_queue);
 } else {

  queues = BIT(local->hw.queues) - 1;
 }

 return queues;
}
