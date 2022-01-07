
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int flags; } ;


 int EVENT_FILE_FL_NO_SET_FILTER ;

__attribute__((used)) static inline void
event_set_no_set_filter_flag(struct trace_event_file *file)
{
 file->flags |= EVENT_FILE_FL_NO_SET_FILTER;
}
