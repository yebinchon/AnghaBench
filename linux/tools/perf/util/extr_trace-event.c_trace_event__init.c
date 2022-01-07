
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event {struct tep_handle* pevent; int plugin_list; } ;
struct tep_handle {int dummy; } ;


 struct tep_handle* tep_alloc () ;
 int tep_load_plugins (struct tep_handle*) ;

int trace_event__init(struct trace_event *t)
{
 struct tep_handle *pevent = tep_alloc();

 if (pevent) {
  t->plugin_list = tep_load_plugins(pevent);
  t->pevent = pevent;
 }

 return pevent ? 0 : -1;
}
