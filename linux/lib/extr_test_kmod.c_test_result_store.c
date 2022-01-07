
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int test_result; } ;
struct kmod_test_device {struct test_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct kmod_test_device* dev_to_test_dev (struct device*) ;
 int test_dev_config_update_int (struct kmod_test_device*,char const*,size_t,int *) ;

__attribute__((used)) static ssize_t test_result_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct kmod_test_device *test_dev = dev_to_test_dev(dev);
 struct test_config *config = &test_dev->config;

 return test_dev_config_update_int(test_dev, buf, count,
       &config->test_result);
}
