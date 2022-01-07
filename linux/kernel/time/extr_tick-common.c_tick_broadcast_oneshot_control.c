
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tick_device {TYPE_1__* evtdev; } ;
typedef enum tick_broadcast_state { ____Placeholder_tick_broadcast_state } tick_broadcast_state ;
struct TYPE_2__ {int features; } ;


 int CLOCK_EVT_FEAT_C3STOP ;
 int __tick_broadcast_oneshot_control (int) ;
 struct tick_device* this_cpu_ptr (int *) ;
 int tick_cpu_device ;

int tick_broadcast_oneshot_control(enum tick_broadcast_state state)
{
 struct tick_device *td = this_cpu_ptr(&tick_cpu_device);

 if (!(td->evtdev->features & CLOCK_EVT_FEAT_C3STOP))
  return 0;

 return __tick_broadcast_oneshot_control(state);
}
