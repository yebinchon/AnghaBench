
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_field {scalar_t__ filter_type; } ;


 scalar_t__ FILTER_COMM ;
 scalar_t__ FILTER_DYN_STRING ;
 scalar_t__ FILTER_PTR_STRING ;
 scalar_t__ FILTER_STATIC_STRING ;

__attribute__((used)) static inline bool is_string_field(struct ftrace_event_field *field)
{
 return field->filter_type == FILTER_DYN_STRING ||
        field->filter_type == FILTER_STATIC_STRING ||
        field->filter_type == FILTER_PTR_STRING ||
        field->filter_type == FILTER_COMM;
}
