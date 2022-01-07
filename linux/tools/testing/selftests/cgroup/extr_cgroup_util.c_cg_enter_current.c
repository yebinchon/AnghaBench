
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pidbuf ;


 int cg_write (char const*,char*,char*) ;
 int getpid () ;
 int snprintf (char*,int,char*,int) ;

int cg_enter_current(const char *cgroup)
{
 char pidbuf[64];

 snprintf(pidbuf, sizeof(pidbuf), "%d", getpid());
 return cg_write(cgroup, "cgroup.procs", pidbuf);
}
