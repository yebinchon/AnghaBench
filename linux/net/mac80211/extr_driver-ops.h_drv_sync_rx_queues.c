
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int sta; int sdata; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sync_rx_queues ) (int *) ;} ;


 int stub1 (int *) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_sync_rx_queues (struct ieee80211_local*,int ,int *) ;

__attribute__((used)) static inline void drv_sync_rx_queues(struct ieee80211_local *local,
          struct sta_info *sta)
{
 if (local->ops->sync_rx_queues) {
  trace_drv_sync_rx_queues(local, sta->sdata, &sta->sta);
  local->ops->sync_rx_queues(&local->hw);
  trace_drv_return_void(local);
 }
}
