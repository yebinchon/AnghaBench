
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int flush; } ;


 int IEEE80211_QUEUE_STOP_REASON_FLUSH ;
 int QUEUE_CONTROL ;
 int drv_flush (struct ieee80211_local*,struct ieee80211_sub_if_data*,unsigned int,int) ;
 unsigned int ieee80211_get_vif_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int ieee80211_hw_check (int *,int ) ;
 int ieee80211_stop_queues_by_reason (int *,unsigned int,int ,int) ;
 int ieee80211_wake_queues_by_reason (int *,unsigned int,int ,int) ;

void __ieee80211_flush_queues(struct ieee80211_local *local,
         struct ieee80211_sub_if_data *sdata,
         unsigned int queues, bool drop)
{
 if (!local->ops->flush)
  return;





 if (!queues || !ieee80211_hw_check(&local->hw, QUEUE_CONTROL))
  queues = ieee80211_get_vif_queues(local, sdata);

 ieee80211_stop_queues_by_reason(&local->hw, queues,
     IEEE80211_QUEUE_STOP_REASON_FLUSH,
     0);

 drv_flush(local, sdata, queues, drop);

 ieee80211_wake_queues_by_reason(&local->hw, queues,
     IEEE80211_QUEUE_STOP_REASON_FLUSH,
     0);
}
