
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_MAN_PATH ;
 scalar_t__ asprintf (char**,char*,int ,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int pr_err (char*) ;
 int setenv (char*,char*,int) ;
 int system_path (int ) ;

__attribute__((used)) static void setup_man_path(void)
{
 char *new_path;
 const char *old_path = getenv("MANPATH");





 if (asprintf(&new_path, "%s:%s", system_path(PERF_MAN_PATH), old_path ?: "") > 0) {
  setenv("MANPATH", new_path, 1);
  free(new_path);
 } else {
  pr_err("Unable to setup man path");
 }
}
