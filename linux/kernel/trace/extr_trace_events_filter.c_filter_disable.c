
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {unsigned long flags; } ;


 unsigned long EVENT_FILE_FL_FILTERED ;
 int trace_buffered_event_disable () ;

__attribute__((used)) static void filter_disable(struct trace_event_file *file)
{
 unsigned long old_flags = file->flags;

 file->flags &= ~EVENT_FILE_FL_FILTERED;

 if (old_flags != file->flags)
  trace_buffered_event_disable();
}
