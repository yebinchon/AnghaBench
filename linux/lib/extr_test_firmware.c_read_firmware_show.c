
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct test_batched_req {TYPE_1__* fw; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {size_t read_fw_idx; size_t num_requests; struct test_batched_req* reqs; } ;
struct TYPE_3__ {int size; int data; } ;


 int EINVAL ;
 int ENOENT ;
 int ERANGE ;
 int PAGE_SIZE ;
 int memcpy (char*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 int pr_info (char*,size_t,int ) ;
 TYPE_2__* test_fw_config ;
 int test_fw_mutex ;

__attribute__((used)) static ssize_t read_firmware_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct test_batched_req *req;
 u8 idx;
 ssize_t rc = 0;

 mutex_lock(&test_fw_mutex);

 idx = test_fw_config->read_fw_idx;
 if (idx >= test_fw_config->num_requests) {
  rc = -ERANGE;
  goto out;
 }

 if (!test_fw_config->reqs) {
  rc = -EINVAL;
  goto out;
 }

 req = &test_fw_config->reqs[idx];
 if (!req->fw) {
  pr_err("#%u: failed to async load firmware\n", idx);
  rc = -ENOENT;
  goto out;
 }

 pr_info("#%u: loaded %zu\n", idx, req->fw->size);

 if (req->fw->size > PAGE_SIZE) {
  pr_err("Testing interface must use PAGE_SIZE firmware for now\n");
  rc = -EINVAL;
  goto out;
 }
 memcpy(buf, req->fw->data, req->fw->size);

 rc = req->fw->size;
out:
 mutex_unlock(&test_fw_mutex);

 return rc;
}
