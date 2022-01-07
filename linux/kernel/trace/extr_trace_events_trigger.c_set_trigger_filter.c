
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int event_call; int tr; } ;
struct event_trigger_data {int * filter; int * filter_str; } ;
struct event_filter {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int create_event_filter (int ,int ,char*,int,struct event_filter**) ;
 int free_event_filter (struct event_filter*) ;
 int kfree (int *) ;
 int * kstrdup (char*,int ) ;
 struct event_filter* rcu_access_pointer (int *) ;
 int rcu_assign_pointer (int *,struct event_filter*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 int tracepoint_synchronize_unregister () ;

int set_trigger_filter(char *filter_str,
         struct event_trigger_data *trigger_data,
         struct trace_event_file *file)
{
 struct event_trigger_data *data = trigger_data;
 struct event_filter *filter = ((void*)0), *tmp;
 int ret = -EINVAL;
 char *s;

 if (!filter_str)
  goto assign;

 s = strsep(&filter_str, " \t");

 if (!strlen(s) || strcmp(s, "if") != 0)
  goto out;

 if (!filter_str)
  goto out;


 ret = create_event_filter(file->tr, file->event_call,
      filter_str, 0, &filter);




 assign:
 tmp = rcu_access_pointer(data->filter);

 rcu_assign_pointer(data->filter, filter);

 if (tmp) {

  tracepoint_synchronize_unregister();
  free_event_filter(tmp);
 }

 kfree(data->filter_str);
 data->filter_str = ((void*)0);

 if (filter_str) {
  data->filter_str = kstrdup(filter_str, GFP_KERNEL);
  if (!data->filter_str) {
   free_event_filter(rcu_access_pointer(data->filter));
   data->filter = ((void*)0);
   ret = -ENOMEM;
  }
 }
 out:
 return ret;
}
