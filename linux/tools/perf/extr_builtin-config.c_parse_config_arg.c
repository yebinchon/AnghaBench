
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*,char*) ;
 void* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int parse_config_arg(char *arg, char **var, char **value)
{
 const char *last_dot = strchr(arg, '.');





 if (last_dot == ((void*)0) || last_dot == arg) {
  pr_err("The config variable does not contain a section name: %s\n", arg);
  return -1;
 }
 if (!last_dot[1]) {
  pr_err("The config variable does not contain a variable name: %s\n", arg);
  return -1;
 }

 *value = strchr(arg, '=');
 if (*value == ((void*)0))
  *var = arg;
 else if (!strcmp(*value, "=")) {
  pr_err("The config variable does not contain a value: %s\n", arg);
  return -1;
 } else {
  *value = *value + 1;
  *var = strsep(&arg, "=");
  if (*var[0] == '\0') {
   pr_err("invalid config variable: %s\n", arg);
   return -1;
  }
 }

 return 0;
}
