
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee802154_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_channel ) (int *,int ,int ) ;} ;


 int might_sleep () ;
 int stub1 (int *,int ,int ) ;
 int trace_802154_drv_return_int (struct ieee802154_local*,int) ;
 int trace_802154_drv_set_channel (struct ieee802154_local*,int ,int ) ;

__attribute__((used)) static inline int
drv_set_channel(struct ieee802154_local *local, u8 page, u8 channel)
{
 int ret;

 might_sleep();

 trace_802154_drv_set_channel(local, page, channel);
 ret = local->ops->set_channel(&local->hw, page, channel);
 trace_802154_drv_return_int(local, ret);
 return ret;
}
