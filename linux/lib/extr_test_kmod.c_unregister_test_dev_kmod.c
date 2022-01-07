
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_test_device {int trigger_mutex; int config_mutex; int misc_dev; int dev; } ;


 int dev_info (int ,char*) ;
 int free_test_dev_kmod (struct kmod_test_device*) ;
 int misc_deregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_dev_kmod_stop_tests (struct kmod_test_device*) ;

__attribute__((used)) static
void unregister_test_dev_kmod(struct kmod_test_device *test_dev)
{
 mutex_lock(&test_dev->trigger_mutex);
 mutex_lock(&test_dev->config_mutex);

 test_dev_kmod_stop_tests(test_dev);

 dev_info(test_dev->dev, "removing interface\n");
 misc_deregister(&test_dev->misc_dev);

 mutex_unlock(&test_dev->config_mutex);
 mutex_unlock(&test_dev->trigger_mutex);

 free_test_dev_kmod(test_dev);
}
