
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMBARRIER_CMD_REGISTER_PRIVATE_EXPEDITED ;
 int errno ;
 int ksft_exit_fail_msg (char*,char const*,int,int ) ;
 int ksft_test_result_pass (char*,char const*,int) ;
 scalar_t__ sys_membarrier (int,int) ;

__attribute__((used)) static int test_membarrier_register_private_expedited_success(void)
{
 int cmd = MEMBARRIER_CMD_REGISTER_PRIVATE_EXPEDITED, flags = 0;
 const char *test_name = "sys membarrier MEMBARRIER_CMD_REGISTER_PRIVATE_EXPEDITED";

 if (sys_membarrier(cmd, flags) != 0) {
  ksft_exit_fail_msg(
   "%s test: flags = %d, errno = %d\n",
   test_name, flags, errno);
 }

 ksft_test_result_pass(
  "%s test: flags = %d\n",
  test_name, flags);
 return 0;
}
