
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_plugin_option {int dummy; } ;
struct registered_plugin_options {struct registered_plugin_options* next; struct tep_plugin_option* options; } ;


 int free (struct registered_plugin_options*) ;
 struct registered_plugin_options* registered_options ;

void tep_plugin_remove_options(struct tep_plugin_option *options)
{
 struct registered_plugin_options **last;
 struct registered_plugin_options *reg;

 for (last = &registered_options; *last; last = &(*last)->next) {
  if ((*last)->options == options) {
   reg = *last;
   *last = reg->next;
   free(reg);
   return;
  }
 }
}
