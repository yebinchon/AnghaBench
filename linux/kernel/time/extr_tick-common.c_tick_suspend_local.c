
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tick_device {int evtdev; } ;


 int clockevents_shutdown (int ) ;
 struct tick_device* this_cpu_ptr (int *) ;
 int tick_cpu_device ;

void tick_suspend_local(void)
{
 struct tick_device *td = this_cpu_ptr(&tick_cpu_device);

 clockevents_shutdown(td->evtdev);
}
