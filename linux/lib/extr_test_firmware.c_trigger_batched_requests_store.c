
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct test_batched_req {size_t idx; int completion; scalar_t__ sent; int * task; struct device* dev; int name; int * fw; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {size_t num_requests; int test_result; struct test_batched_req* reqs; int name; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int *) ;
 int KBUILD_MODNAME ;
 int array3_size (int,size_t,int) ;
 int init_completion (int *) ;
 int * kthread_run (int ,struct test_batched_req*,char*,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,size_t) ;
 int pr_info (char*,int ,size_t) ;
 TYPE_1__* test_fw_config ;
 int test_fw_mutex ;
 int test_fw_run_batch_request ;
 struct test_batched_req* vzalloc (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static ssize_t trigger_batched_requests_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 struct test_batched_req *req;
 int rc;
 u8 i;

 mutex_lock(&test_fw_mutex);

 test_fw_config->reqs =
  vzalloc(array3_size(sizeof(struct test_batched_req),
        test_fw_config->num_requests, 2));
 if (!test_fw_config->reqs) {
  rc = -ENOMEM;
  goto out_unlock;
 }

 pr_info("batched sync firmware loading '%s' %u times\n",
  test_fw_config->name, test_fw_config->num_requests);

 for (i = 0; i < test_fw_config->num_requests; i++) {
  req = &test_fw_config->reqs[i];
  req->fw = ((void*)0);
  req->idx = i;
  req->name = test_fw_config->name;
  req->dev = dev;
  init_completion(&req->completion);
  req->task = kthread_run(test_fw_run_batch_request, req,
          "%s-%u", KBUILD_MODNAME, req->idx);
  if (!req->task || IS_ERR(req->task)) {
   pr_err("Setting up thread %u failed\n", req->idx);
   req->task = ((void*)0);
   rc = -ENOMEM;
   goto out_bail;
  }
 }

 rc = count;
out_bail:
 for (i = 0; i < test_fw_config->num_requests; i++) {
  req = &test_fw_config->reqs[i];
  if (req->task || req->sent)
   wait_for_completion(&req->completion);
 }


 if (rc < 0)
  test_fw_config->test_result = rc;

out_unlock:
 mutex_unlock(&test_fw_mutex);

 return rc;
}
