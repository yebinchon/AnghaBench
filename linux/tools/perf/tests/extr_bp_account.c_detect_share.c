
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;


 int TEST_ASSERT_VAL (char*,int) ;
 int bp_event (void*,struct perf_event_attr*) ;
 int close (int) ;
 scalar_t__ test_function ;
 int the_var ;
 int wp_event (void*,struct perf_event_attr*) ;

__attribute__((used)) static int detect_share(int wp_cnt, int bp_cnt)
{
 struct perf_event_attr attr;
 int i, fd[wp_cnt + bp_cnt], ret;

 for (i = 0; i < wp_cnt; i++) {
  fd[i] = wp_event((void *)&the_var, &attr);
  TEST_ASSERT_VAL("failed to create wp\n", fd[i] != -1);
 }

 for (; i < (bp_cnt + wp_cnt); i++) {
  fd[i] = bp_event((void *)test_function, &attr);
  if (fd[i] == -1)
   break;
 }

 ret = i != (bp_cnt + wp_cnt);

 while (i--)
  close(fd[i]);

 return ret;
}
