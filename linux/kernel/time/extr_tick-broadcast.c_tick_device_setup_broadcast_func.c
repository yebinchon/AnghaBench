
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {scalar_t__ broadcast; int name; } ;


 scalar_t__ err_broadcast ;
 int pr_warn_once (char*,int ) ;
 scalar_t__ tick_broadcast ;

__attribute__((used)) static void tick_device_setup_broadcast_func(struct clock_event_device *dev)
{
 if (!dev->broadcast)
  dev->broadcast = tick_broadcast;
 if (!dev->broadcast) {
  pr_warn_once("%s depends on broadcast, but no broadcast function available\n",
        dev->name);
  dev->broadcast = err_broadcast;
 }
}
