
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {unsigned long flags; } ;


 unsigned long EVENT_FILE_FL_FILTERED ;
 int trace_buffered_event_enable () ;

__attribute__((used)) static inline void event_set_filtered_flag(struct trace_event_file *file)
{
 unsigned long old_flags = file->flags;

 file->flags |= EVENT_FILE_FL_FILTERED;

 if (old_flags != file->flags)
  trace_buffered_event_enable();
}
