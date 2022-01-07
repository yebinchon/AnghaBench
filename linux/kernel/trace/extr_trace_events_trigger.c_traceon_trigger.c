
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;
struct event_trigger_data {int dummy; } ;


 scalar_t__ tracing_is_on () ;
 int tracing_on () ;

__attribute__((used)) static void
traceon_trigger(struct event_trigger_data *data, void *rec,
  struct ring_buffer_event *event)
{
 if (tracing_is_on())
  return;

 tracing_on();
}
