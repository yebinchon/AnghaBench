
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_event {TYPE_1__* pmu; } ;
struct TYPE_2__ {int (* check_period ) (struct perf_event*,int ) ;} ;


 int stub1 (struct perf_event*,int ) ;

__attribute__((used)) static int perf_event_check_period(struct perf_event *event, u64 value)
{
 return event->pmu->check_period(event, value);
}
