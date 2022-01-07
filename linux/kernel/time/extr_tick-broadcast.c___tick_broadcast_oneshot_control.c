
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int features; } ;
typedef enum tick_broadcast_state { ____Placeholder_tick_broadcast_state } tick_broadcast_state ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;


 int CLOCK_EVT_FEAT_HRTIMER ;
 int EBUSY ;
 TYPE_1__ tick_broadcast_device ;

int __tick_broadcast_oneshot_control(enum tick_broadcast_state state)
{
 struct clock_event_device *bc = tick_broadcast_device.evtdev;

 if (!bc || (bc->features & CLOCK_EVT_FEAT_HRTIMER))
  return -EBUSY;

 return 0;
}
