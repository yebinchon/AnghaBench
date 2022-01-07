
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_probe {int dummy; } ;
struct trace_event_call {char* print_fmt; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __set_print_fmt (struct trace_probe*,char*,int,int) ;
 char* kmalloc (int,int ) ;
 struct trace_event_call* trace_probe_event_call (struct trace_probe*) ;

int traceprobe_set_print_fmt(struct trace_probe *tp, bool is_return)
{
 struct trace_event_call *call = trace_probe_event_call(tp);
 int len;
 char *print_fmt;


 len = __set_print_fmt(tp, ((void*)0), 0, is_return);
 print_fmt = kmalloc(len + 1, GFP_KERNEL);
 if (!print_fmt)
  return -ENOMEM;


 __set_print_fmt(tp, print_fmt, len + 1, is_return);
 call->print_fmt = print_fmt;

 return 0;
}
