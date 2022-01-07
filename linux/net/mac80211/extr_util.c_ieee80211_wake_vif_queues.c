
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int hw; } ;
typedef enum queue_stop_reason { ____Placeholder_queue_stop_reason } queue_stop_reason ;


 int ieee80211_get_vif_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int ieee80211_wake_queues_by_reason (int *,int ,int,int) ;

void ieee80211_wake_vif_queues(struct ieee80211_local *local,
          struct ieee80211_sub_if_data *sdata,
          enum queue_stop_reason reason)
{
 ieee80211_wake_queues_by_reason(&local->hw,
     ieee80211_get_vif_queues(local, sdata),
     reason, 1);
}
