
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_test_device {scalar_t__ test_is_oom; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ WARN_ON (int) ;
 struct kmod_test_device* dev_to_test_dev (struct device*) ;
 int trigger_config_run (struct kmod_test_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t
trigger_config_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct kmod_test_device *test_dev = dev_to_test_dev(dev);
 int ret;

 if (test_dev->test_is_oom)
  return -ENOMEM;







 ret = trigger_config_run(test_dev);
 if (unlikely(ret < 0))
  goto out;







 if (WARN_ON(ret > 0))
  return -EINVAL;

 ret = count;
out:
 return ret;
}
