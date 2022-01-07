
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_subsystem_dir {int dummy; } ;
struct trace_array {int dummy; } ;
struct filter_parse_error {int dummy; } ;
struct event_filter {int * filter_string; } ;


 int append_filter_err (struct trace_array*,struct filter_parse_error*,struct event_filter*) ;
 int create_filter_finish (struct filter_parse_error*) ;
 int create_filter_start (char*,int,struct filter_parse_error**,struct event_filter**) ;
 int kfree (int *) ;
 int process_system_preds (struct trace_subsystem_dir*,struct trace_array*,struct filter_parse_error*,char*) ;

__attribute__((used)) static int create_system_filter(struct trace_subsystem_dir *dir,
    struct trace_array *tr,
    char *filter_str, struct event_filter **filterp)
{
 struct filter_parse_error *pe = ((void*)0);
 int err;

 err = create_filter_start(filter_str, 1, &pe, filterp);
 if (!err) {
  err = process_system_preds(dir, tr, pe, filter_str);
  if (!err) {

   kfree((*filterp)->filter_string);
   (*filterp)->filter_string = ((void*)0);
  } else {
   append_filter_err(tr, pe, *filterp);
  }
 }
 create_filter_finish(pe);

 return err;
}
