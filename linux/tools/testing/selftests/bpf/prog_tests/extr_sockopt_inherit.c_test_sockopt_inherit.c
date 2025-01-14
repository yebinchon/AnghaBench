
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CHECK_FAIL (int) ;
 int close (int) ;
 int run_test (int) ;
 int test__join_cgroup (char*) ;

void test_sockopt_inherit(void)
{
 int cgroup_fd;

 cgroup_fd = test__join_cgroup("/sockopt_inherit");
 if (CHECK_FAIL(cgroup_fd < 0))
  return;

 run_test(cgroup_fd);
 close(cgroup_fd);
}
