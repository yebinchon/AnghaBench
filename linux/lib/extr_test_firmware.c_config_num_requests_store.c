
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int num_requests; scalar_t__ reqs; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int test_dev_config_update_u8 (char const*,size_t,int *) ;
 TYPE_1__* test_fw_config ;
 int test_fw_mutex ;

__attribute__((used)) static ssize_t config_num_requests_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 int rc;

 mutex_lock(&test_fw_mutex);
 if (test_fw_config->reqs) {
  pr_err("Must call release_all_firmware prior to changing config\n");
  rc = -EINVAL;
  mutex_unlock(&test_fw_mutex);
  goto out;
 }
 mutex_unlock(&test_fw_mutex);

 rc = test_dev_config_update_u8(buf, count,
           &test_fw_config->num_requests);

out:
 return rc;
}
