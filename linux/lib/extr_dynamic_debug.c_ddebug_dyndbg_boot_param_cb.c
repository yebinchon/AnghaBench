
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ddebug_dyndbg_param_cb (char*,char*,int *,int ) ;
 int vpr_info (char*,char*,char*) ;

__attribute__((used)) static int ddebug_dyndbg_boot_param_cb(char *param, char *val,
    const char *unused, void *arg)
{
 vpr_info("%s=\"%s\"\n", param, val);
 return ddebug_dyndbg_param_cb(param, val, ((void*)0), 0);
}
