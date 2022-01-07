
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 struct clocksource* suspend_clocksource ;

__attribute__((used)) static bool clocksource_is_suspend(struct clocksource *cs)
{
 return cs == suspend_clocksource;
}
