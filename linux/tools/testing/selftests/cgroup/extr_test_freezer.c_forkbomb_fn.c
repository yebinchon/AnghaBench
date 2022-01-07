
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fork () ;
 int getppid () ;
 int usleep (int) ;

__attribute__((used)) static int forkbomb_fn(const char *cgroup, void *arg)
{
 int ppid;

 fork();
 fork();

 ppid = getppid();

 while (getppid() == ppid)
  usleep(1000);

 return getppid() == ppid;
}
