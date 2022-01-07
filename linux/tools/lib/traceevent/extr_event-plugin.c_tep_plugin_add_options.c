
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_plugin_option {scalar_t__ name; } ;
struct registered_plugin_options {struct tep_plugin_option* options; struct registered_plugin_options* next; } ;


 struct registered_plugin_options* malloc (int) ;
 struct registered_plugin_options* registered_options ;
 int update_option (char const*,struct tep_plugin_option*) ;

int tep_plugin_add_options(const char *name,
      struct tep_plugin_option *options)
{
 struct registered_plugin_options *reg;

 reg = malloc(sizeof(*reg));
 if (!reg)
  return -1;
 reg->next = registered_options;
 reg->options = options;
 registered_options = reg;

 while (options->name) {
  update_option(name, options);
  options++;
 }
 return 0;
}
