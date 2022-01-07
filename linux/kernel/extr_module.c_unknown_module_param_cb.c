
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int async_probe_requested; } ;


 int ddebug_dyndbg_module_param_cb (char*,char*,char const*) ;
 int pr_warn (char*,char const*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int unknown_module_param_cb(char *param, char *val, const char *modname,
       void *arg)
{
 struct module *mod = arg;
 int ret;

 if (strcmp(param, "async_probe") == 0) {
  mod->async_probe_requested = 1;
  return 0;
 }


 ret = ddebug_dyndbg_module_param_cb(param, val, modname);
 if (ret != 0)
  pr_warn("%s: unknown parameter '%s' ignored\n", modname, param);
 return 0;
}
