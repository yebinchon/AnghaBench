
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getppid () ;
 int usleep (int) ;

__attribute__((used)) static int child_fn(const char *cgroup, void *arg)
{
 int ppid = getppid();

 while (getppid() == ppid)
  usleep(1000);

 return getppid() == ppid;
}
