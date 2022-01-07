
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alloc_anon (char const*,void*) ;
 int getppid () ;
 int sleep (int) ;

__attribute__((used)) static int alloc_anon_noexit(const char *cgroup, void *arg)
{
 int ppid = getppid();

 if (alloc_anon(cgroup, arg))
  return -1;

 while (getppid() == ppid)
  sleep(1);

 return 0;
}
