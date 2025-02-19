
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_event_file {TYPE_2__* event_call; } ;
struct trace_array {int dummy; } ;
struct TYPE_4__ {int flags; TYPE_1__* class; } ;
struct TYPE_3__ {int reg; } ;


 int TRACE_EVENT_FL_IGNORE_ENABLE ;
 struct trace_event_file* __find_event_file (struct trace_array*,char const*,char const*) ;

struct trace_event_file *
find_event_file(struct trace_array *tr, const char *system, const char *event)
{
 struct trace_event_file *file;

 file = __find_event_file(tr, system, event);
 if (!file || !file->event_call->class->reg ||
     file->event_call->flags & TRACE_EVENT_FL_IGNORE_ENABLE)
  return ((void*)0);

 return file;
}
