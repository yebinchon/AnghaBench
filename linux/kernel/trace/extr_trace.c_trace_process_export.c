
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_export {int (* write ) (struct trace_export*,struct trace_entry*,unsigned int) ;} ;
struct trace_entry {int dummy; } ;
struct ring_buffer_event {int dummy; } ;


 struct trace_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 unsigned int ring_buffer_event_length (struct ring_buffer_event*) ;
 int stub1 (struct trace_export*,struct trace_entry*,unsigned int) ;

__attribute__((used)) static void
trace_process_export(struct trace_export *export,
        struct ring_buffer_event *event)
{
 struct trace_entry *entry;
 unsigned int size = 0;

 entry = ring_buffer_event_data(event);
 size = ring_buffer_event_length(event);
 export->write(export, entry, size);
}
