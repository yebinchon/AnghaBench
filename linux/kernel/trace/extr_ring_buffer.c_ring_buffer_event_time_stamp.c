
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ring_buffer_event {scalar_t__ time_delta; int * array; } ;


 int TS_SHIFT ;

u64 ring_buffer_event_time_stamp(struct ring_buffer_event *event)
{
 u64 ts;

 ts = event->array[0];
 ts <<= TS_SHIFT;
 ts += event->time_delta;

 return ts;
}
