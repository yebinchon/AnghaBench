
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EXIT_FAILURE ;
 scalar_t__ cg_write (char const*,char*,char*) ;
 int exit (int) ;
 int fork () ;
 int getpid () ;
 int snprintf (char*,int,char*,int) ;

int cg_run_nowait(const char *cgroup,
    int (*fn)(const char *cgroup, void *arg),
    void *arg)
{
 int pid;

 pid = fork();
 if (pid == 0) {
  char buf[64];

  snprintf(buf, sizeof(buf), "%d", getpid());
  if (cg_write(cgroup, "cgroup.procs", buf))
   exit(EXIT_FAILURE);
  exit(fn(cgroup, arg));
 }

 return pid;
}
