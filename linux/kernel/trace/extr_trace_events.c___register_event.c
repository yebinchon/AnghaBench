
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {struct module* mod; int list; } ;
struct module {int dummy; } ;


 int event_init (struct trace_event_call*) ;
 int ftrace_events ;
 int list_add (int *,int *) ;

__attribute__((used)) static int
__register_event(struct trace_event_call *call, struct module *mod)
{
 int ret;

 ret = event_init(call);
 if (ret < 0)
  return ret;

 list_add(&call->list, &ftrace_events);
 call->mod = mod;

 return 0;
}
