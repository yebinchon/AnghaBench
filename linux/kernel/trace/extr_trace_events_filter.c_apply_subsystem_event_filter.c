
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_subsystem_dir {int nr_events; struct trace_array* tr; struct event_subsystem* subsystem; } ;
struct trace_array {int dummy; } ;
struct event_subsystem {struct event_filter* filter; } ;
struct event_filter {int dummy; } ;


 int ENODEV ;
 int __free_filter (struct event_filter*) ;
 int create_system_filter (struct trace_subsystem_dir*,struct trace_array*,char*,struct event_filter**) ;
 int event_mutex ;
 int filter_free_subsystem_filters (struct trace_subsystem_dir*,struct trace_array*) ;
 int filter_free_subsystem_preds (struct trace_subsystem_dir*,struct trace_array*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_filter_string (struct event_filter*) ;
 int strcmp (int ,char*) ;
 int strstrip (char*) ;
 int tracepoint_synchronize_unregister () ;

int apply_subsystem_event_filter(struct trace_subsystem_dir *dir,
     char *filter_string)
{
 struct event_subsystem *system = dir->subsystem;
 struct trace_array *tr = dir->tr;
 struct event_filter *filter = ((void*)0);
 int err = 0;

 mutex_lock(&event_mutex);


 if (!dir->nr_events) {
  err = -ENODEV;
  goto out_unlock;
 }

 if (!strcmp(strstrip(filter_string), "0")) {
  filter_free_subsystem_preds(dir, tr);
  remove_filter_string(system->filter);
  filter = system->filter;
  system->filter = ((void*)0);

  tracepoint_synchronize_unregister();
  filter_free_subsystem_filters(dir, tr);
  __free_filter(filter);
  goto out_unlock;
 }

 err = create_system_filter(dir, tr, filter_string, &filter);
 if (filter) {




  __free_filter(system->filter);
  system->filter = filter;
 }
out_unlock:
 mutex_unlock(&event_mutex);

 return err;
}
