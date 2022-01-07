
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int isatty (int) ;
 scalar_t__ pager_in_use () ;
 int perf_config_bool (char const*,char const*) ;
 int strcasecmp (char const*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

int perf_config_colorbool(const char *var, const char *value, int stdout_is_tty)
{
 if (value) {
  if (!strcasecmp(value, "never"))
   return 0;
  if (!strcasecmp(value, "always"))
   return 1;
  if (!strcasecmp(value, "auto"))
   goto auto_color;
 }


 if (!perf_config_bool(var, value))
  return 0;


 auto_color:
 if (stdout_is_tty < 0)
  stdout_is_tty = isatty(1);
 if (stdout_is_tty || pager_in_use()) {
  char *term = getenv("TERM");
  if (term && strcmp(term, "dumb"))
   return 1;
 }
 return 0;
}
