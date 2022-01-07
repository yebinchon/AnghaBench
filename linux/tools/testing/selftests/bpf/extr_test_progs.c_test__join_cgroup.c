
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* test; } ;
struct TYPE_3__ {int need_cgroup_cleanup; int test_num; char* test_name; } ;


 int create_and_get_cgroup (char const*) ;
 TYPE_2__ env ;
 int errno ;
 int fprintf (int ,char*,int,char*,...) ;
 scalar_t__ join_cgroup (char const*) ;
 scalar_t__ setup_cgroup_environment () ;
 int stderr ;

int test__join_cgroup(const char *path)
{
 int fd;

 if (!env.test->need_cgroup_cleanup) {
  if (setup_cgroup_environment()) {
   fprintf(stderr,
    "#%d %s: Failed to setup cgroup environment\n",
    env.test->test_num, env.test->test_name);
   return -1;
  }

  env.test->need_cgroup_cleanup = 1;
 }

 fd = create_and_get_cgroup(path);
 if (fd < 0) {
  fprintf(stderr,
   "#%d %s: Failed to create cgroup '%s' (errno=%d)\n",
   env.test->test_num, env.test->test_name, path, errno);
  return fd;
 }

 if (join_cgroup(path)) {
  fprintf(stderr,
   "#%d %s: Failed to join cgroup '%s' (errno=%d)\n",
   env.test->test_num, env.test->test_name, path, errno);
  return -1;
 }

 return fd;
}
