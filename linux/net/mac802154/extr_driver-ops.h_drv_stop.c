
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802154_local {int started; int tasklet; int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop ) (int *) ;} ;


 int barrier () ;
 int might_sleep () ;
 int stub1 (int *) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 int trace_802154_drv_return_void (struct ieee802154_local*) ;
 int trace_802154_drv_stop (struct ieee802154_local*) ;

__attribute__((used)) static inline void drv_stop(struct ieee802154_local *local)
{
 might_sleep();

 trace_802154_drv_stop(local);
 local->ops->stop(&local->hw);
 trace_802154_drv_return_void(local);


 tasklet_disable(&local->tasklet);
 tasklet_enable(&local->tasklet);

 barrier();

 local->started = 0;
}
