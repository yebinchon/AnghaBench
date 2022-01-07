
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pidbuf ;


 int cg_write (char const*,char*,char*) ;
 int snprintf (char*,int,char*,int) ;

int cg_enter(const char *cgroup, int pid)
{
 char pidbuf[64];

 snprintf(pidbuf, sizeof(pidbuf), "%d", pid);
 return cg_write(cgroup, "cgroup.procs", pidbuf);
}
