
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int smp_processor_id () ;
 int tick_check_percpu (struct clock_event_device*,struct clock_event_device*,int ) ;
 int tick_check_preferred (struct clock_event_device*,struct clock_event_device*) ;

bool tick_check_replacement(struct clock_event_device *curdev,
       struct clock_event_device *newdev)
{
 if (!tick_check_percpu(curdev, newdev, smp_processor_id()))
  return 0;

 return tick_check_preferred(curdev, newdev);
}
