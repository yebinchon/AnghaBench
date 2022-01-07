
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 int MEMBARRIER_CMD_GLOBAL ;
 int MEMBARRIER_CMD_QUERY ;
 scalar_t__ errno ;
 int ksft_exit_fail_msg (char*) ;
 int ksft_exit_skip (char*) ;
 int ksft_test_result_pass (char*) ;
 int sys_membarrier (int ,int) ;

__attribute__((used)) static int test_membarrier_query(void)
{
 int flags = 0, ret;

 ret = sys_membarrier(MEMBARRIER_CMD_QUERY, flags);
 if (ret < 0) {
  if (errno == ENOSYS) {




   ksft_exit_skip(
    "sys membarrier (CONFIG_MEMBARRIER) is disabled.\n");
  }
  ksft_exit_fail_msg("sys_membarrier() failed\n");
 }
 if (!(ret & MEMBARRIER_CMD_GLOBAL))
  ksft_exit_skip(
   "sys_membarrier unsupported: CMD_GLOBAL not found.\n");

 ksft_test_result_pass("sys_membarrier available\n");
 return 0;
}
