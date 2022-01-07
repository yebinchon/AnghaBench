
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int tr; struct trace_event_call* event_call; } ;
struct trace_event_call {int dummy; } ;
struct event_filter {int dummy; } ;


 int __free_filter (struct event_filter*) ;
 int create_filter (int ,struct trace_event_call*,char*,int,struct event_filter**) ;
 int event_clear_filter (struct trace_event_file*) ;
 struct event_filter* event_filter (struct trace_event_file*) ;
 int event_set_filter (struct trace_event_file*,struct event_filter*) ;
 int event_set_filtered_flag (struct trace_event_file*) ;
 int filter_disable (struct trace_event_file*) ;
 int strcmp (int ,char*) ;
 int strstrip (char*) ;
 int tracepoint_synchronize_unregister () ;

int apply_event_filter(struct trace_event_file *file, char *filter_string)
{
 struct trace_event_call *call = file->event_call;
 struct event_filter *filter = ((void*)0);
 int err;

 if (!strcmp(strstrip(filter_string), "0")) {
  filter_disable(file);
  filter = event_filter(file);

  if (!filter)
   return 0;

  event_clear_filter(file);


  tracepoint_synchronize_unregister();
  __free_filter(filter);

  return 0;
 }

 err = create_filter(file->tr, call, filter_string, 1, &filter);







 if (filter) {
  struct event_filter *tmp;

  tmp = event_filter(file);
  if (!err)
   event_set_filtered_flag(file);
  else
   filter_disable(file);

  event_set_filter(file, filter);

  if (tmp) {

   tracepoint_synchronize_unregister();
   __free_filter(tmp);
  }
 }

 return err;
}
