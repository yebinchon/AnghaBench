
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int features; scalar_t__ rating; int cpumask; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int cpumask_equal (int ,int ) ;
 scalar_t__ tick_oneshot_mode_active () ;

__attribute__((used)) static bool tick_check_preferred(struct clock_event_device *curdev,
     struct clock_event_device *newdev)
{

 if (!(newdev->features & CLOCK_EVT_FEAT_ONESHOT)) {
  if (curdev && (curdev->features & CLOCK_EVT_FEAT_ONESHOT))
   return 0;
  if (tick_oneshot_mode_active())
   return 0;
 }





 return !curdev ||
  newdev->rating > curdev->rating ||
        !cpumask_equal(curdev->cpumask, newdev->cpumask);
}
