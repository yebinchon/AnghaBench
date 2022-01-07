
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int argc; int index; int subsystem; int * argv; } ;


 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;
 int trace_probe_err_text ;
 TYPE_1__ trace_probe_log ;
 int tracing_log_err (int *,int ,char*,int ,int,int) ;

void __trace_probe_log_err(int offset, int err_type)
{
 char *command, *p;
 int i, len = 0, pos = 0;

 if (!trace_probe_log.argv)
  return;


 for (i = 0; i < trace_probe_log.argc; i++) {
  if (i == trace_probe_log.index)
   pos = len;
  len += strlen(trace_probe_log.argv[i]) + 1;
 }
 command = kzalloc(len, GFP_KERNEL);
 if (!command)
  return;

 if (trace_probe_log.index >= trace_probe_log.argc) {





  pos = len;
  offset = 0;
 }


 p = command;
 for (i = 0; i < trace_probe_log.argc; i++) {
  len = strlen(trace_probe_log.argv[i]);
  strcpy(p, trace_probe_log.argv[i]);
  p[len] = ' ';
  p += len + 1;
 }
 *(p - 1) = '\0';

 tracing_log_err(((void*)0), trace_probe_log.subsystem, command,
   trace_probe_err_text, err_type, pos + offset);

 kfree(command);
}
