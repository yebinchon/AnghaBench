
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;


 int SCRIPT_FULLPATH_LEN ;
 scalar_t__ asprintf (char**,char*,char*,char*,char const*,char*,char*) ;
 int free (char*) ;
 char* input_name ;
 scalar_t__ list_scripts (char*,int*,struct evsel*) ;
 int memset (char*,int ,int) ;
 int run_script (char*) ;

int script_browse(const char *script_opt, struct evsel *evsel)
{
 char *cmd, script_name[SCRIPT_FULLPATH_LEN];
 bool custom = 0;

 memset(script_name, 0, SCRIPT_FULLPATH_LEN);
 if (list_scripts(script_name, &custom, evsel))
  return -1;

 if (asprintf(&cmd, "%s%s %s %s%s 2>&1 | less",
   custom ? "perf script -s " : "",
   script_name,
   script_opt ? script_opt : "",
   input_name ? "-i " : "",
   input_name ? input_name : "") < 0)
  return -1;

 run_script(cmd);
 free(cmd);

 return 0;
}
