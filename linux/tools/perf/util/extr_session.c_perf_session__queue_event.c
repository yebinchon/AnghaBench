
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
typedef int u64 ;
struct perf_session {int ordered_events; } ;


 int ordered_events__queue (int *,union perf_event*,int ,int ) ;

int perf_session__queue_event(struct perf_session *s, union perf_event *event,
         u64 timestamp, u64 file_offset)
{
 return ordered_events__queue(&s->ordered_events, event, timestamp, file_offset);
}
