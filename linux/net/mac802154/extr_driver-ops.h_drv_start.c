
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802154_local {int started; int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* start ) (int *) ;} ;


 int might_sleep () ;
 int smp_mb () ;
 int stub1 (int *) ;
 int trace_802154_drv_return_int (struct ieee802154_local*,int) ;
 int trace_802154_drv_start (struct ieee802154_local*) ;

__attribute__((used)) static inline int drv_start(struct ieee802154_local *local)
{
 int ret;

 might_sleep();

 trace_802154_drv_start(local);
 local->started = 1;
 smp_mb();
 ret = local->ops->start(&local->hw);
 trace_802154_drv_return_int(local, ret);
 return ret;
}
