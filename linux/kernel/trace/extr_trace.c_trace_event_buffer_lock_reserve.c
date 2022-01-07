
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_event_file {int flags; TYPE_2__* tr; } ;
struct ring_buffer_event {unsigned long* array; } ;
struct ring_buffer {int dummy; } ;
struct TYPE_3__ {struct ring_buffer* buffer; } ;
struct TYPE_4__ {TYPE_1__ trace_buffer; } ;


 int EVENT_FILE_FL_FILTERED ;
 int EVENT_FILE_FL_SOFT_DISABLED ;
 int EVENT_FILE_FL_TRIGGER_COND ;
 struct ring_buffer_event* __trace_buffer_lock_reserve (struct ring_buffer*,int,unsigned long,unsigned long,int) ;
 int ring_buffer_time_stamp_abs (struct ring_buffer*) ;
 struct ring_buffer* temp_buffer ;
 int this_cpu_dec (int ) ;
 int this_cpu_inc_return (int ) ;
 struct ring_buffer_event* this_cpu_read (int ) ;
 int trace_buffered_event ;
 int trace_buffered_event_cnt ;
 int trace_event_setup (struct ring_buffer_event*,int,unsigned long,int) ;

struct ring_buffer_event *
trace_event_buffer_lock_reserve(struct ring_buffer **current_rb,
     struct trace_event_file *trace_file,
     int type, unsigned long len,
     unsigned long flags, int pc)
{
 struct ring_buffer_event *entry;
 int val;

 *current_rb = trace_file->tr->trace_buffer.buffer;

 if (!ring_buffer_time_stamp_abs(*current_rb) && (trace_file->flags &
      (EVENT_FILE_FL_SOFT_DISABLED | EVENT_FILE_FL_FILTERED)) &&
     (entry = this_cpu_read(trace_buffered_event))) {

  val = this_cpu_inc_return(trace_buffered_event_cnt);
  if (val == 1) {
   trace_event_setup(entry, type, flags, pc);
   entry->array[0] = len;
   return entry;
  }
  this_cpu_dec(trace_buffered_event_cnt);
 }

 entry = __trace_buffer_lock_reserve(*current_rb,
         type, len, flags, pc);






 if (!entry && trace_file->flags & EVENT_FILE_FL_TRIGGER_COND) {
  *current_rb = temp_buffer;
  entry = __trace_buffer_lock_reserve(*current_rb,
          type, len, flags, pc);
 }
 return entry;
}
