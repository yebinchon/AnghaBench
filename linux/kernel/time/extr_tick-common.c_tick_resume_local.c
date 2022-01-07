
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tick_device {scalar_t__ mode; int evtdev; } ;


 scalar_t__ TICKDEV_MODE_PERIODIC ;
 int clockevents_tick_resume (int ) ;
 struct tick_device* this_cpu_ptr (int *) ;
 int tick_cpu_device ;
 int tick_resume_check_broadcast () ;
 int tick_resume_oneshot () ;
 int tick_setup_periodic (int ,int ) ;

void tick_resume_local(void)
{
 struct tick_device *td = this_cpu_ptr(&tick_cpu_device);
 bool broadcast = tick_resume_check_broadcast();

 clockevents_tick_resume(td->evtdev);
 if (!broadcast) {
  if (td->mode == TICKDEV_MODE_PERIODIC)
   tick_setup_periodic(td->evtdev, 0);
  else
   tick_resume_oneshot();
 }
}
