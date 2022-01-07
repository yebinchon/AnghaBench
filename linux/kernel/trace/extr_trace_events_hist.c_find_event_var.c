
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_file {int dummy; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {TYPE_1__* event_file; } ;
struct hist_field {int dummy; } ;
struct TYPE_2__ {struct trace_array* tr; } ;


 scalar_t__ IS_ERR (struct hist_field*) ;
 struct hist_field* find_file_var (struct trace_event_file*,char*) ;
 struct hist_field* find_match_var (struct hist_trigger_data*,char*) ;
 struct trace_event_file* find_var_file (struct trace_array*,char*,char*,char*) ;

__attribute__((used)) static struct hist_field *find_event_var(struct hist_trigger_data *hist_data,
      char *system,
      char *event_name,
      char *var_name)
{
 struct trace_array *tr = hist_data->event_file->tr;
 struct hist_field *hist_field = ((void*)0);
 struct trace_event_file *file;

 if (!system || !event_name) {
  hist_field = find_match_var(hist_data, var_name);
  if (IS_ERR(hist_field))
   return ((void*)0);
  if (hist_field)
   return hist_field;
 }

 file = find_var_file(tr, system, event_name, var_name);
 if (!file)
  return ((void*)0);

 hist_field = find_file_var(file, var_name);

 return hist_field;
}
