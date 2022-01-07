
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cg_check_frozen (char const*,int) ;
 int cg_enter (char const*,int) ;
 int cg_prepare_for_wait (char const*) ;
 int cg_wait_for (int) ;
 int close (int) ;

__attribute__((used)) static int cg_enter_and_wait_for_frozen(const char *cgroup, int pid,
     bool frozen)
{
 int fd, ret = -1;
 int attempts;

 fd = cg_prepare_for_wait(cgroup);
 if (fd < 0)
  return fd;

 ret = cg_enter(cgroup, pid);
 if (ret)
  goto out;

 for (attempts = 0; attempts < 10; attempts++) {
  ret = cg_wait_for(fd);
  if (ret)
   break;

  ret = cg_check_frozen(cgroup, frozen);
  if (ret)
   continue;
 }

out:
 close(fd);
 return ret;
}
