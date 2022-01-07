
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int test_fs; } ;
struct kmod_test_device {int config_mutex; struct test_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int config_test_show_str (int *,char*,int ) ;
 struct kmod_test_device* dev_to_test_dev (struct device*) ;

__attribute__((used)) static ssize_t config_test_fs_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct kmod_test_device *test_dev = dev_to_test_dev(dev);
 struct test_config *config = &test_dev->config;

 return config_test_show_str(&test_dev->config_mutex, buf,
        config->test_fs);
}
