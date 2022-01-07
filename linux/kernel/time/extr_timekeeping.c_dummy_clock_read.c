
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int cycles_at_suspend ;

__attribute__((used)) static u64 dummy_clock_read(struct clocksource *cs)
{
 return cycles_at_suspend;
}
