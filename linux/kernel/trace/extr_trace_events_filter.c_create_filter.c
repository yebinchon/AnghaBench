
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int dummy; } ;
struct trace_array {int dummy; } ;
struct filter_parse_error {int dummy; } ;
struct event_filter {int dummy; } ;


 scalar_t__ WARN_ON (struct event_filter*) ;
 int append_filter_err (struct trace_array*,struct filter_parse_error*,struct event_filter*) ;
 int create_filter_finish (struct filter_parse_error*) ;
 int create_filter_start (char*,int,struct filter_parse_error**,struct event_filter**) ;
 int process_preds (struct trace_event_call*,char*,struct event_filter*,struct filter_parse_error*) ;

__attribute__((used)) static int create_filter(struct trace_array *tr,
    struct trace_event_call *call,
    char *filter_string, bool set_str,
    struct event_filter **filterp)
{
 struct filter_parse_error *pe = ((void*)0);
 int err;


 if (WARN_ON(*filterp))
  *filterp = ((void*)0);

 err = create_filter_start(filter_string, set_str, &pe, filterp);
 if (err)
  return err;

 err = process_preds(call, filter_string, *filterp, pe);
 if (err && set_str)
  append_filter_err(tr, pe, *filterp);
 create_filter_finish(pe);

 return err;
}
