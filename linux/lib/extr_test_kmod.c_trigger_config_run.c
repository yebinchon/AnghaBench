
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int test_result; } ;
struct kmod_test_device {int trigger_mutex; int config_mutex; int dev; struct test_config config; } ;


 int __trigger_config_run (struct kmod_test_device*) ;
 int dev_info (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int trigger_config_run(struct kmod_test_device *test_dev)
{
 struct test_config *config = &test_dev->config;
 int ret;

 mutex_lock(&test_dev->trigger_mutex);
 mutex_lock(&test_dev->config_mutex);

 ret = __trigger_config_run(test_dev);
 if (ret < 0)
  goto out;
 dev_info(test_dev->dev, "General test result: %d\n",
   config->test_result);
 ret = 0;

out:
 mutex_unlock(&test_dev->config_mutex);
 mutex_unlock(&test_dev->trigger_mutex);

 return ret;
}
