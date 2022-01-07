
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int __test_firmware_config_free () ;
 int __test_firmware_config_init () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int pr_info (char*) ;
 int test_fw_mutex ;

__attribute__((used)) static ssize_t reset_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 int ret;

 mutex_lock(&test_fw_mutex);

 __test_firmware_config_free();

 ret = __test_firmware_config_init();
 if (ret < 0) {
  ret = -ENOMEM;
  pr_err("could not alloc settings for config trigger: %d\n",
         ret);
  goto out;
 }

 pr_info("reset\n");
 ret = count;

out:
 mutex_unlock(&test_fw_mutex);

 return ret;
}
