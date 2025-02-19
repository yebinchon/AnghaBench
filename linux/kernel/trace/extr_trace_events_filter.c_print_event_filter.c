
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_event_file {int dummy; } ;
struct event_filter {scalar_t__ filter_string; } ;


 struct event_filter* event_filter (struct trace_event_file*) ;
 int trace_seq_printf (struct trace_seq*,char*,scalar_t__) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

void print_event_filter(struct trace_event_file *file, struct trace_seq *s)
{
 struct event_filter *filter = event_filter(file);

 if (filter && filter->filter_string)
  trace_seq_printf(s, "%s\n", filter->filter_string);
 else
  trace_seq_puts(s, "none\n");
}
