
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int detach_sb_event (struct perf_event*) ;
 scalar_t__ is_sb_event (struct perf_event*) ;

__attribute__((used)) static void unaccount_pmu_sb_event(struct perf_event *event)
{
 if (is_sb_event(event))
  detach_sb_event(event);
}
