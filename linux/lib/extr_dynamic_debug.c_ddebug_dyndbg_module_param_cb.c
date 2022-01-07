
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ddebug_dyndbg_param_cb (char*,char*,char const*,int ) ;
 int vpr_info (char*,char const*,char*,char*) ;

int ddebug_dyndbg_module_param_cb(char *param, char *val, const char *module)
{
 vpr_info("module: %s %s=\"%s\"\n", module, param, val);
 return ddebug_dyndbg_param_cb(param, val, module, -ENOENT);
}
