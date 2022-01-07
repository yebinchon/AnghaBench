
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_probe {int size; struct probe_arg* args; int nr_args; } ;
struct probe_arg {int name; } ;


 int ARG_NAME_TOO_LONG ;
 int BAD_ARG_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ARG_NAME_LEN ;
 int NO_ARG_NAME ;
 int USED_ARG_NAME ;
 int is_good_name (int ) ;
 int kasprintf (int ,char*,int) ;
 int kmemdup_nul (char*,int,int ) ;
 char* strchr (char*,char) ;
 int trace_probe_log_err (int ,int ) ;
 scalar_t__ traceprobe_conflict_field_name (int ,struct probe_arg*,int) ;
 int traceprobe_parse_probe_arg_body (char*,int *,struct probe_arg*,unsigned int,int) ;

int traceprobe_parse_probe_arg(struct trace_probe *tp, int i, char *arg,
    unsigned int flags)
{
 struct probe_arg *parg = &tp->args[i];
 char *body;


 tp->nr_args++;

 body = strchr(arg, '=');
 if (body) {
  if (body - arg > MAX_ARG_NAME_LEN) {
   trace_probe_log_err(0, ARG_NAME_TOO_LONG);
   return -EINVAL;
  } else if (body == arg) {
   trace_probe_log_err(0, NO_ARG_NAME);
   return -EINVAL;
  }
  parg->name = kmemdup_nul(arg, body - arg, GFP_KERNEL);
  body++;
 } else {

  parg->name = kasprintf(GFP_KERNEL, "arg%d", i + 1);
  body = arg;
 }
 if (!parg->name)
  return -ENOMEM;

 if (!is_good_name(parg->name)) {
  trace_probe_log_err(0, BAD_ARG_NAME);
  return -EINVAL;
 }
 if (traceprobe_conflict_field_name(parg->name, tp->args, i)) {
  trace_probe_log_err(0, USED_ARG_NAME);
  return -EINVAL;
 }

 return traceprobe_parse_probe_arg_body(body, &tp->size, parg, flags,
            body - arg);
}
