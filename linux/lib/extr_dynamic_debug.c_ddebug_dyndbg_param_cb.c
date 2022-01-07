
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ddebug_exec_queries (char*,char const*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int ddebug_dyndbg_param_cb(char *param, char *val,
    const char *modname, int on_err)
{
 char *sep;

 sep = strchr(param, '.');
 if (sep) {

  *sep = '\0';
  modname = param;
  param = sep + 1;
 }
 if (strcmp(param, "dyndbg"))
  return on_err;

 ddebug_exec_queries((val ? val : "+p"), modname);

 return 0;
}
