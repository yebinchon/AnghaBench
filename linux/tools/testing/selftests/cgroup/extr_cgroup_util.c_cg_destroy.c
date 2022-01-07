
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBUSY ;
 scalar_t__ ENOENT ;
 int cg_killall (char const*) ;
 scalar_t__ errno ;
 int rmdir (char const*) ;
 int usleep (int) ;

int cg_destroy(const char *cgroup)
{
 int ret;

retry:
 ret = rmdir(cgroup);
 if (ret && errno == EBUSY) {
  cg_killall(cgroup);
  usleep(100);
  goto retry;
 }

 if (ret && errno == ENOENT)
  ret = 0;

 return ret;
}
