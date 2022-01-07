
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 int MEMBARRIER_CMD_QUERY ;
 scalar_t__ errno ;
 int ksft_exit_fail_msg (char*,char const*,int,...) ;
 int ksft_test_result_pass (char*,char const*,int,scalar_t__) ;
 int strerror (scalar_t__) ;
 int sys_membarrier (int,int) ;

__attribute__((used)) static int test_membarrier_flags_fail(void)
{
 int cmd = MEMBARRIER_CMD_QUERY, flags = 1;
 const char *test_name = "sys membarrier MEMBARRIER_CMD_QUERY invalid flags";

 if (sys_membarrier(cmd, flags) != -1) {
  ksft_exit_fail_msg(
   "%s test: flags = %d. Should fail, but passed\n",
   test_name, flags);
 }
 if (errno != EINVAL) {
  ksft_exit_fail_msg(
   "%s test: flags = %d. Should return (%d: \"%s\"), but returned (%d: \"%s\").\n",
   test_name, flags, EINVAL, strerror(EINVAL),
   errno, strerror(errno));
 }

 ksft_test_result_pass(
  "%s test: flags = %d, errno = %d. Failed as expected\n",
  test_name, flags, errno);
 return 0;
}
