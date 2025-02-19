
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 char* buildid_dir ;
 char* perf_config_dirname (char const*,char const*) ;
 int pr_err (char*) ;
 int strcmp (char const*,char*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int perf_buildid_config(const char *var, const char *value)
{

 if (!strcmp(var, "buildid.dir")) {
  const char *dir = perf_config_dirname(var, value);

  if (!dir) {
   pr_err("Invalid buildid directory!\n");
   return -1;
  }
  strncpy(buildid_dir, dir, MAXPATHLEN-1);
  buildid_dir[MAXPATHLEN-1] = '\0';
 }

 return 0;
}
