
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
union perf_event {TYPE_1__ header; } ;
typedef scalar_t__ u64 ;
struct perf_top {int delay_secs; } ;
struct ordered_event {scalar_t__ timestamp; union perf_event* event; } ;


 int NSEC_PER_SEC ;
 scalar_t__ PERF_RECORD_SAMPLE ;
 scalar_t__ last_timestamp ;

__attribute__((used)) static int should_drop(struct ordered_event *qevent, struct perf_top *top)
{
 union perf_event *event = qevent->event;
 u64 delay_timestamp;

 if (event->header.type != PERF_RECORD_SAMPLE)
  return 0;

 delay_timestamp = qevent->timestamp + top->delay_secs * NSEC_PER_SEC;
 return delay_timestamp < last_timestamp;
}
