
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PAGE_SIZE ;
 int SIGKILL ;
 scalar_t__ cg_read (char const*,char*,char*,int) ;
 scalar_t__ kill (int,int ) ;
 int strtol (char*,char**,int) ;

int cg_killall(const char *cgroup)
{
 char buf[PAGE_SIZE];
 char *ptr = buf;

 if (cg_read(cgroup, "cgroup.procs", buf, sizeof(buf)))
  return -1;

 while (ptr < buf + sizeof(buf)) {
  int pid = strtol(ptr, &ptr, 10);

  if (pid == 0)
   break;
  if (*ptr)
   ptr++;
  else
   break;
  if (kill(pid, SIGKILL))
   return -1;
 }

 return 0;
}
