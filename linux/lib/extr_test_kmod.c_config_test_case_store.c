
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int test_case; } ;
struct kmod_test_device {struct test_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ __TEST_KMOD_INVALID ;
 scalar_t__ __TEST_KMOD_MAX ;
 struct kmod_test_device* dev_to_test_dev (struct device*) ;
 int test_dev_config_update_uint_range (struct kmod_test_device*,char const*,size_t,int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static ssize_t config_test_case_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct kmod_test_device *test_dev = dev_to_test_dev(dev);
 struct test_config *config = &test_dev->config;

 return test_dev_config_update_uint_range(test_dev, buf, count,
       &config->test_case,
       __TEST_KMOD_INVALID + 1,
       __TEST_KMOD_MAX - 1);
}
