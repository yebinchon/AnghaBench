
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int __perf_event_disable ;
 int event_function_local (struct perf_event*,int ,int *) ;

void perf_event_disable_local(struct perf_event *event)
{
 event_function_local(event, __perf_event_disable, ((void*)0));
}
