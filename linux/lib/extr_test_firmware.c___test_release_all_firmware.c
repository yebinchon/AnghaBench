
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct test_batched_req {scalar_t__ fw; } ;
struct TYPE_2__ {size_t num_requests; struct test_batched_req* reqs; } ;


 int release_firmware (scalar_t__) ;
 TYPE_1__* test_fw_config ;
 int vfree (struct test_batched_req*) ;

__attribute__((used)) static void __test_release_all_firmware(void)
{
 struct test_batched_req *req;
 u8 i;

 if (!test_fw_config->reqs)
  return;

 for (i = 0; i < test_fw_config->num_requests; i++) {
  req = &test_fw_config->reqs[i];
  if (req->fw)
   release_firmware(req->fw);
 }

 vfree(test_fw_config->reqs);
 test_fw_config->reqs = ((void*)0);
}
