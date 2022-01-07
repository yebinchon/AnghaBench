
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_test_device {int trigger_mutex; int config_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int __kmod_config_init (struct kmod_test_device*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*) ;
 struct kmod_test_device* dev_to_test_dev (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t reset_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct kmod_test_device *test_dev = dev_to_test_dev(dev);
 int ret;

 mutex_lock(&test_dev->trigger_mutex);
 mutex_lock(&test_dev->config_mutex);

 ret = __kmod_config_init(test_dev);
 if (ret < 0) {
  ret = -ENOMEM;
  dev_err(dev, "could not alloc settings for config trigger: %d\n",
         ret);
  goto out;
 }

 dev_info(dev, "reset\n");
 ret = count;

out:
 mutex_unlock(&test_dev->config_mutex);
 mutex_unlock(&test_dev->trigger_mutex);

 return ret;
}
