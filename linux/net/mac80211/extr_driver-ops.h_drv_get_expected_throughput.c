
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sta_info {int sta; scalar_t__ uploaded; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_expected_throughput ) (int *,int *) ;} ;


 int stub1 (int *,int *) ;
 int trace_drv_get_expected_throughput (int *) ;
 int trace_drv_return_u32 (struct ieee80211_local*,int ) ;

__attribute__((used)) static inline u32 drv_get_expected_throughput(struct ieee80211_local *local,
           struct sta_info *sta)
{
 u32 ret = 0;

 trace_drv_get_expected_throughput(&sta->sta);
 if (local->ops->get_expected_throughput && sta->uploaded)
  ret = local->ops->get_expected_throughput(&local->hw, &sta->sta);
 trace_drv_return_u32(local, ret);

 return ret;
}
