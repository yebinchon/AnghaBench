
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {char* size; } ;


 int ENOSPC ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrndup (char const*,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,char*,...) ;
 int release_firmware (TYPE_1__*) ;
 int request_firmware (TYPE_1__**,char*,struct device*) ;
 TYPE_1__* test_firmware ;
 int test_fw_mutex ;

__attribute__((used)) static ssize_t trigger_request_store(struct device *dev,
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
 rc = request_firmware(&test_firmware, name, dev);
 if (rc) {
  pr_info("load of '%s' failed: %d\n", name, rc);
  goto out;
 }
 pr_info("loaded: %zu\n", test_firmware->size);
 rc = count;

out:
 mutex_unlock(&test_fw_mutex);

 kfree(name);

 return rc;
}
