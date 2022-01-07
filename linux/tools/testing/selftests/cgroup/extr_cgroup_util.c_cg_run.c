
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EXIT_FAILURE ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ cg_write (char const*,char*,char*) ;
 int exit (int) ;
 int fork () ;
 int getpid () ;
 int snprintf (char*,int,char*,int) ;
 int waitpid (int,int*,int ) ;

int cg_run(const char *cgroup,
    int (*fn)(const char *cgroup, void *arg),
    void *arg)
{
 int pid, retcode;

 pid = fork();
 if (pid < 0) {
  return pid;
 } else if (pid == 0) {
  char buf[64];

  snprintf(buf, sizeof(buf), "%d", getpid());
  if (cg_write(cgroup, "cgroup.procs", buf))
   exit(EXIT_FAILURE);
  exit(fn(cgroup, arg));
 } else {
  waitpid(pid, &retcode, 0);
  if (WIFEXITED(retcode))
   return WEXITSTATUS(retcode);
  else
   return -1;
 }
}
