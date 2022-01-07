
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_file {int event_call; struct trace_array* tr; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {int enable_timestamps; TYPE_1__* attrs; } ;
struct ftrace_event_field {int size; } ;
struct TYPE_2__ {int ts_in_usecs; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ftrace_event_field* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int HIST_ERR_BAD_FIELD_MODIFIER ;
 int HIST_ERR_FIELD_NOT_FOUND ;
 unsigned long HIST_FIELD_FL_CPU ;
 unsigned long HIST_FIELD_FL_EXECNAME ;
 unsigned long HIST_FIELD_FL_HEX ;
 unsigned long HIST_FIELD_FL_LOG2 ;
 unsigned long HIST_FIELD_FL_SYM ;
 unsigned long HIST_FIELD_FL_SYM_OFFSET ;
 unsigned long HIST_FIELD_FL_SYSCALL ;
 unsigned long HIST_FIELD_FL_TIMESTAMP ;
 unsigned long HIST_FIELD_FL_TIMESTAMP_USECS ;
 int errpos (char*) ;
 int hist_err (struct trace_array*,int ,int ) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 struct ftrace_event_field* trace_find_event_field (int ,char*) ;

__attribute__((used)) static struct ftrace_event_field *
parse_field(struct hist_trigger_data *hist_data, struct trace_event_file *file,
     char *field_str, unsigned long *flags)
{
 struct ftrace_event_field *field = ((void*)0);
 char *field_name, *modifier, *str;
 struct trace_array *tr = file->tr;

 modifier = str = kstrdup(field_str, GFP_KERNEL);
 if (!modifier)
  return ERR_PTR(-ENOMEM);

 field_name = strsep(&modifier, ".");
 if (modifier) {
  if (strcmp(modifier, "hex") == 0)
   *flags |= HIST_FIELD_FL_HEX;
  else if (strcmp(modifier, "sym") == 0)
   *flags |= HIST_FIELD_FL_SYM;
  else if (strcmp(modifier, "sym-offset") == 0)
   *flags |= HIST_FIELD_FL_SYM_OFFSET;
  else if ((strcmp(modifier, "execname") == 0) &&
    (strcmp(field_name, "common_pid") == 0))
   *flags |= HIST_FIELD_FL_EXECNAME;
  else if (strcmp(modifier, "syscall") == 0)
   *flags |= HIST_FIELD_FL_SYSCALL;
  else if (strcmp(modifier, "log2") == 0)
   *flags |= HIST_FIELD_FL_LOG2;
  else if (strcmp(modifier, "usecs") == 0)
   *flags |= HIST_FIELD_FL_TIMESTAMP_USECS;
  else {
   hist_err(tr, HIST_ERR_BAD_FIELD_MODIFIER, errpos(modifier));
   field = ERR_PTR(-EINVAL);
   goto out;
  }
 }

 if (strcmp(field_name, "common_timestamp") == 0) {
  *flags |= HIST_FIELD_FL_TIMESTAMP;
  hist_data->enable_timestamps = 1;
  if (*flags & HIST_FIELD_FL_TIMESTAMP_USECS)
   hist_data->attrs->ts_in_usecs = 1;
 } else if (strcmp(field_name, "cpu") == 0)
  *flags |= HIST_FIELD_FL_CPU;
 else {
  field = trace_find_event_field(file->event_call, field_name);
  if (!field || !field->size) {
   hist_err(tr, HIST_ERR_FIELD_NOT_FOUND, errpos(field_name));
   field = ERR_PTR(-EINVAL);
   goto out;
  }
 }
 out:
 kfree(str);

 return field;
}
