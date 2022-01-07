
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int prev_count; } ;
struct perf_event {int count; TYPE_1__ hw; } ;
typedef scalar_t__ s64 ;


 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_xchg (int *,scalar_t__) ;
 scalar_t__ local_clock () ;

__attribute__((used)) static void cpu_clock_event_update(struct perf_event *event)
{
 s64 prev;
 u64 now;

 now = local_clock();
 prev = local64_xchg(&event->hw.prev_count, now);
 local64_add(now - prev, &event->count);
}
