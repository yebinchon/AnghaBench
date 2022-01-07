
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event {int pevent; int plugin_list; } ;


 int tep_free (int ) ;
 int tep_unload_plugins (int ,int ) ;

void trace_event__cleanup(struct trace_event *t)
{
 tep_unload_plugins(t->plugin_list, t->pevent);
 tep_free(t->pevent);
}
