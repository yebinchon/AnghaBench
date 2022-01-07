
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_plugin_options {int value; scalar_t__ option; scalar_t__ plugin; struct trace_plugin_options* next; } ;
struct tep_plugin_option {char const* plugin_alias; char* name; } ;


 int free (char*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 char* strdup (char const*) ;
 char* strstr (char*,char*) ;
 struct trace_plugin_options* trace_plugin_options ;
 int update_option_value (struct tep_plugin_option*,int ) ;

__attribute__((used)) static int
update_option(const char *file, struct tep_plugin_option *option)
{
 struct trace_plugin_options *op;
 char *plugin;
 int ret = 0;

 if (option->plugin_alias) {
  plugin = strdup(option->plugin_alias);
  if (!plugin)
   return -1;
 } else {
  char *p;
  plugin = strdup(file);
  if (!plugin)
   return -1;
  p = strstr(plugin, ".");
  if (p)
   *p = '\0';
 }


 for (op = trace_plugin_options; op; op = op->next) {
  if (!op->plugin)
   continue;
  if (strcmp(op->plugin, plugin) != 0)
   continue;
  if (strcmp(op->option, option->name) != 0)
   continue;

  ret = update_option_value(option, op->value);
  if (ret)
   goto out;
  break;
 }


 for (op = trace_plugin_options; op; op = op->next) {
  if (op->plugin)
   continue;
  if (strcmp(op->option, option->name) != 0)
   continue;

  ret = update_option_value(option, op->value);
  break;
 }

 out:
 free(plugin);
 return ret;
}
