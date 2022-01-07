
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int features; scalar_t__ rating; } ;
struct TYPE_2__ {scalar_t__ mode; } ;


 int CLOCK_EVT_FEAT_C3STOP ;
 int CLOCK_EVT_FEAT_DUMMY ;
 int CLOCK_EVT_FEAT_ONESHOT ;
 int CLOCK_EVT_FEAT_PERCPU ;
 scalar_t__ TICKDEV_MODE_ONESHOT ;
 TYPE_1__ tick_broadcast_device ;

__attribute__((used)) static bool tick_check_broadcast_device(struct clock_event_device *curdev,
     struct clock_event_device *newdev)
{
 if ((newdev->features & CLOCK_EVT_FEAT_DUMMY) ||
     (newdev->features & CLOCK_EVT_FEAT_PERCPU) ||
     (newdev->features & CLOCK_EVT_FEAT_C3STOP))
  return 0;

 if (tick_broadcast_device.mode == TICKDEV_MODE_ONESHOT &&
     !(newdev->features & CLOCK_EVT_FEAT_ONESHOT))
  return 0;

 return !curdev || newdev->rating > curdev->rating;
}
