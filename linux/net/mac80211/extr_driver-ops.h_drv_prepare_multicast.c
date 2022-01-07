
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct netdev_hw_addr_list {int count; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* prepare_multicast ) (int *,struct netdev_hw_addr_list*) ;} ;


 int stub1 (int *,struct netdev_hw_addr_list*) ;
 int trace_drv_prepare_multicast (struct ieee80211_local*,int ) ;
 int trace_drv_return_u64 (struct ieee80211_local*,int ) ;

__attribute__((used)) static inline u64 drv_prepare_multicast(struct ieee80211_local *local,
     struct netdev_hw_addr_list *mc_list)
{
 u64 ret = 0;

 trace_drv_prepare_multicast(local, mc_list->count);

 if (local->ops->prepare_multicast)
  ret = local->ops->prepare_multicast(&local->hw, mc_list);

 trace_drv_return_u64(local, ret);

 return ret;
}
