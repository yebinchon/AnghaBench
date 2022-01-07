
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_plugin_list {struct tep_plugin_list* next; int name; } ;


 int trace_seq_printf (struct trace_seq*,char*,char const*,int ,char const*) ;

void tep_print_plugins(struct trace_seq *s,
         const char *prefix, const char *suffix,
         const struct tep_plugin_list *list)
{
 while (list) {
  trace_seq_printf(s, "%s%s%s", prefix, list->name, suffix);
  list = list->next;
 }
}
