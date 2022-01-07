
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int flags; } ;


 int CLOCK_SOURCE_IS_CONTINUOUS ;
 int CLOCK_SOURCE_VALID_FOR_HRES ;

__attribute__((used)) static void clocksource_enqueue_watchdog(struct clocksource *cs)
{
 if (cs->flags & CLOCK_SOURCE_IS_CONTINUOUS)
  cs->flags |= CLOCK_SOURCE_VALID_FOR_HRES;
}
