
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct test_batched_req {int completion; struct firmware const* fw; int idx; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int test_result; } ;


 int EINVAL ;
 int ENOENT ;
 int complete (int *) ;
 int ssleep (int) ;
 TYPE_1__* test_fw_config ;

__attribute__((used)) static void trigger_batched_cb(const struct firmware *fw, void *context)
{
 struct test_batched_req *req = context;

 if (!req) {
  test_fw_config->test_result = -EINVAL;
  return;
 }


 if (!req->idx)
  ssleep(2);

 req->fw = fw;







 if (!fw && !test_fw_config->test_result)
  test_fw_config->test_result = -ENOENT;

 complete(&req->completion);
}
