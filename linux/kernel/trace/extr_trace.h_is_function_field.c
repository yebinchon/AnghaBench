
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_field {scalar_t__ filter_type; } ;


 scalar_t__ FILTER_TRACE_FN ;

__attribute__((used)) static inline bool is_function_field(struct ftrace_event_field *field)
{
 return field->filter_type == FILTER_TRACE_FN;
}
