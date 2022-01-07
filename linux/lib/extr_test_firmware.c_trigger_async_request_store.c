
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {char* size; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int async_fw_done ;
 int kfree (char*) ;
 char* kstrndup (char const*,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int pr_info (char*,char*,...) ;
 int release_firmware (TYPE_1__*) ;
 int request_firmware_nowait (int ,int,char*,struct device*,int ,int *,int ) ;
 TYPE_1__* test_firmware ;
 int test_fw_mutex ;
 int trigger_async_request_cb ;
 int wait_for_completion (int *) ;

__attribute__((used)) static ssize_t trigger_async_request_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 int rc;
 char *name;

 name = kstrndup(buf, count, GFP_KERNEL);
 if (!name)
  return -ENOSPC;

 pr_info("loading '%s'\n", name);

 mutex_lock(&test_fw_mutex);
 release_firmware(test_firmware);
 test_firmware = ((void*)0);
 rc = request_firmware_nowait(THIS_MODULE, 1, name, dev, GFP_KERNEL,
         ((void*)0), trigger_async_request_cb);
 if (rc) {
  pr_info("async load of '%s' failed: %d\n", name, rc);
  kfree(name);
  goto out;
 }

 kfree(name);

 wait_for_completion(&async_fw_done);

 if (test_firmware) {
  pr_info("loaded: %zu\n", test_firmware->size);
  rc = count;
 } else {
  pr_err("failed to async load firmware\n");
  rc = -ENOMEM;
 }

out:
 mutex_unlock(&test_fw_mutex);

 return rc;
}
