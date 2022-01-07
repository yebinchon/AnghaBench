
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int __ftrace_set_clr_event (struct trace_array*,char*,char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

int ftrace_set_clr_event(struct trace_array *tr, char *buf, int set)
{
 char *event = ((void*)0), *sub = ((void*)0), *match;
 int ret;
 match = strsep(&buf, ":");
 if (buf) {
  sub = match;
  event = buf;
  match = ((void*)0);

  if (!strlen(sub) || strcmp(sub, "*") == 0)
   sub = ((void*)0);
  if (!strlen(event) || strcmp(event, "*") == 0)
   event = ((void*)0);
 }

 ret = __ftrace_set_clr_event(tr, match, sub, event, set);


 if (buf)
  *(buf - 1) = ':';

 return ret;
}
