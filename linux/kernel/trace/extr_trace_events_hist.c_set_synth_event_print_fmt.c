
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {char* print_fmt; struct synth_event* data; } ;
struct synth_event {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __set_synth_event_print_fmt (struct synth_event*,char*,int) ;
 char* kmalloc (int,int ) ;

__attribute__((used)) static int set_synth_event_print_fmt(struct trace_event_call *call)
{
 struct synth_event *event = call->data;
 char *print_fmt;
 int len;


 len = __set_synth_event_print_fmt(event, ((void*)0), 0);

 print_fmt = kmalloc(len + 1, GFP_KERNEL);
 if (!print_fmt)
  return -ENOMEM;


 __set_synth_event_print_fmt(event, print_fmt, len + 1);
 call->print_fmt = print_fmt;

 return 0;
}
