
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct test_batched_req {int rc; int sent; int * task; int completion; TYPE_2__* fw; int idx; int dev; int name; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {int test_result; int (* req_firmware ) (TYPE_2__**,int ,int ) ;scalar_t__ into_buf; } ;


 int EINVAL ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int TEST_FIRMWARE_BUF_SIZE ;
 int complete (int *) ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 int pr_info (char*,int ,int) ;
 int request_firmware_into_buf (TYPE_2__**,int ,int ,void*,int ) ;
 int stub1 (TYPE_2__**,int ,int ) ;
 TYPE_1__* test_fw_config ;

__attribute__((used)) static int test_fw_run_batch_request(void *data)
{
 struct test_batched_req *req = data;

 if (!req) {
  test_fw_config->test_result = -EINVAL;
  return -EINVAL;
 }

 if (test_fw_config->into_buf) {
  void *test_buf;

  test_buf = kzalloc(TEST_FIRMWARE_BUF_SIZE, GFP_KERNEL);
  if (!test_buf)
   return -ENOSPC;

  req->rc = request_firmware_into_buf(&req->fw,
          req->name,
          req->dev,
          test_buf,
          TEST_FIRMWARE_BUF_SIZE);
  if (!req->fw)
   kfree(test_buf);
 } else {
  req->rc = test_fw_config->req_firmware(&req->fw,
             req->name,
             req->dev);
 }

 if (req->rc) {
  pr_info("#%u: batched sync load failed: %d\n",
   req->idx, req->rc);
  if (!test_fw_config->test_result)
   test_fw_config->test_result = req->rc;
 } else if (req->fw) {
  req->sent = 1;
  pr_info("#%u: batched sync loaded %zu\n",
   req->idx, req->fw->size);
 }
 complete(&req->completion);

 req->task = ((void*)0);

 return 0;
}
