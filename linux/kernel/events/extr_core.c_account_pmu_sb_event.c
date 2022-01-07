
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int attach_sb_event (struct perf_event*) ;
 scalar_t__ is_sb_event (struct perf_event*) ;

__attribute__((used)) static void account_pmu_sb_event(struct perf_event *event)
{
 if (is_sb_event(event))
  attach_sb_event(event);
}
