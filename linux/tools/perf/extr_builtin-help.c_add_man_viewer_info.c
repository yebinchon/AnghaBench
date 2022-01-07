
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_man_viewer_cmd (char const*,int,char const*) ;
 int add_man_viewer_path (char const*,int,char const*) ;
 int config_error_nonbool (char const*) ;
 int pr_err (char*,char const*) ;
 int pr_warning (char*,char const*) ;
 int strcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int add_man_viewer_info(const char *var, const char *value)
{
 const char *name = var + 4;
 const char *subkey = strrchr(name, '.');

 if (!subkey) {
  pr_err("Config with no key for man viewer: %s", name);
  return -1;
 }

 if (!strcmp(subkey, ".path")) {
  if (!value)
   return config_error_nonbool(var);
  return add_man_viewer_path(name, subkey - name, value);
 }
 if (!strcmp(subkey, ".cmd")) {
  if (!value)
   return config_error_nonbool(var);
  return add_man_viewer_cmd(name, subkey - name, value);
 }

 pr_warning("'%s': unsupported man viewer sub key.", subkey);
 return 0;
}
