
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char*,char const*,char const*) ;
 int exec_failed (char const*) ;
 int execl (char*,char*,char*,char*,int *) ;
 int free (char*) ;

__attribute__((used)) static void exec_man_cmd(const char *cmd, const char *page)
{
 char *shell_cmd;

 if (asprintf(&shell_cmd, "%s %s", cmd, page) > 0) {
  execl("/bin/sh", "sh", "-c", shell_cmd, ((void*)0));
  free(shell_cmd);
 }
 exec_failed(cmd);
}
