
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int bctimer ;
 int hrtimer_try_to_cancel (int *) ;

__attribute__((used)) static int bc_shutdown(struct clock_event_device *evt)
{
 hrtimer_try_to_cancel(&bctimer);
 return 0;
}
