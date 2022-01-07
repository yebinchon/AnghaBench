
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {unsigned long bp_addr; int bp_type; } ;


 int HW_BREAKPOINT_X ;
 int PERF_EVENT_IOC_MODIFY_ATTRIBUTES ;
 int TEST_ASSERT_VAL (char*,int) ;
 int close (int) ;
 int ioctl (int,int ,struct perf_event_attr*) ;
 int pr_debug (char*,...) ;
 scalar_t__ test_function ;
 int the_var ;
 int wp_event (void*,struct perf_event_attr*) ;

__attribute__((used)) static int bp_accounting(int wp_cnt, int share)
{
 struct perf_event_attr attr, attr_mod, attr_new;
 int i, fd[wp_cnt], fd_wp, ret;

 for (i = 0; i < wp_cnt; i++) {
  fd[i] = wp_event((void *)&the_var, &attr);
  TEST_ASSERT_VAL("failed to create wp\n", fd[i] != -1);
  pr_debug("wp %d created\n", i);
 }

 attr_mod = attr;
 attr_mod.bp_type = HW_BREAKPOINT_X;
 attr_mod.bp_addr = (unsigned long) test_function;

 ret = ioctl(fd[0], PERF_EVENT_IOC_MODIFY_ATTRIBUTES, &attr_mod);
 TEST_ASSERT_VAL("failed to modify wp\n", ret == 0);

 pr_debug("wp 0 modified to bp\n");

 if (!share) {
  fd_wp = wp_event((void *)&the_var, &attr_new);
  TEST_ASSERT_VAL("failed to create max wp\n", fd_wp != -1);
  pr_debug("wp max created\n");
 }

 for (i = 0; i < wp_cnt; i++)
  close(fd[i]);

 return 0;
}
