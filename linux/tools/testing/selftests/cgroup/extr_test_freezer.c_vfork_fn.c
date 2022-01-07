
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sleep (int) ;
 int vfork () ;

__attribute__((used)) static int vfork_fn(const char *cgroup, void *arg)
{
 int pid = vfork();

 if (pid == 0)
  while (1)
   sleep(1);

 return pid;
}
