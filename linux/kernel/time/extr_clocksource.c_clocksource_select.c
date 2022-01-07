
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clocksource_select (int) ;

__attribute__((used)) static void clocksource_select(void)
{
 __clocksource_select(0);
}
