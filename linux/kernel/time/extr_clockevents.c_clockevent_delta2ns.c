
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clock_event_device {int dummy; } ;


 int cev_delta2ns (unsigned long,struct clock_event_device*,int) ;

u64 clockevent_delta2ns(unsigned long latch, struct clock_event_device *evt)
{
 return cev_delta2ns(latch, evt, 0);
}
