
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int * test_driver; } ;
struct kmod_test_device {int config_mutex; struct test_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int config_copy_test_driver_name (struct test_config*,char const*,size_t) ;
 struct kmod_test_device* dev_to_test_dev (struct device*) ;
 int kfree_const (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t config_test_driver_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct kmod_test_device *test_dev = dev_to_test_dev(dev);
 struct test_config *config = &test_dev->config;
 int copied;

 mutex_lock(&test_dev->config_mutex);

 kfree_const(config->test_driver);
 config->test_driver = ((void*)0);

 copied = config_copy_test_driver_name(config, buf, count);
 mutex_unlock(&test_dev->config_mutex);

 return copied;
}
