
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int __perf_event_account_interrupt (struct perf_event*,int) ;

int perf_event_account_interrupt(struct perf_event *event)
{
 return __perf_event_account_interrupt(event, 1);
}
