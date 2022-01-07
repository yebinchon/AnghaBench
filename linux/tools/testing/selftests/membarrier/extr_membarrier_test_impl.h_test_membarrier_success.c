
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE ;
 int MEMBARRIER_CMD_QUERY ;
 int ksft_test_result_fail (char*) ;
 int sys_membarrier (int ,int ) ;
 int test_membarrier_global_expedited_success () ;
 int test_membarrier_global_success () ;
 int test_membarrier_private_expedited_success () ;
 int test_membarrier_private_expedited_sync_core_success () ;
 int test_membarrier_register_global_expedited_success () ;
 int test_membarrier_register_private_expedited_success () ;
 int test_membarrier_register_private_expedited_sync_core_success () ;

__attribute__((used)) static int test_membarrier_success(void)
{
 int status;

 status = test_membarrier_global_success();
 if (status)
  return status;
 status = test_membarrier_register_private_expedited_success();
 if (status)
  return status;
 status = test_membarrier_private_expedited_success();
 if (status)
  return status;
 status = sys_membarrier(MEMBARRIER_CMD_QUERY, 0);
 if (status < 0) {
  ksft_test_result_fail("sys_membarrier() failed\n");
  return status;
 }
 if (status & MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE) {
  status = test_membarrier_register_private_expedited_sync_core_success();
  if (status)
   return status;
  status = test_membarrier_private_expedited_sync_core_success();
  if (status)
   return status;
 }




 status = test_membarrier_global_expedited_success();
 if (status)
  return status;
 status = test_membarrier_register_global_expedited_success();
 if (status)
  return status;
 status = test_membarrier_global_expedited_success();
 if (status)
  return status;
 return 0;
}
