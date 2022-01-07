
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int test_case; int * test_driver; int * test_fs; } ;
struct kmod_test_device {int test_is_oom; int config_mutex; struct test_config config; } ;
typedef enum kmod_test_case { ____Placeholder_kmod_test_case } kmod_test_case ;


 int EINVAL ;
 int ENOMEM ;


 int config_copy_test_driver_name (struct test_config*,char const*,int) ;
 int config_copy_test_fs (struct test_config*,char const*,int) ;
 int kfree_const (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char const*) ;
 int trigger_config_run (struct kmod_test_device*) ;

__attribute__((used)) static int trigger_config_run_type(struct kmod_test_device *test_dev,
       enum kmod_test_case test_case,
       const char *test_str)
{
 int copied = 0;
 struct test_config *config = &test_dev->config;

 mutex_lock(&test_dev->config_mutex);

 switch (test_case) {
 case 129:
  kfree_const(config->test_driver);
  config->test_driver = ((void*)0);
  copied = config_copy_test_driver_name(config, test_str,
            strlen(test_str));
  break;
 case 128:
  kfree_const(config->test_fs);
  config->test_driver = ((void*)0);
  copied = config_copy_test_fs(config, test_str,
          strlen(test_str));
  break;
 default:
  mutex_unlock(&test_dev->config_mutex);
  return -EINVAL;
 }

 config->test_case = test_case;

 mutex_unlock(&test_dev->config_mutex);

 if (copied <= 0 || copied != strlen(test_str)) {
  test_dev->test_is_oom = 1;
  return -ENOMEM;
 }

 test_dev->test_is_oom = 0;

 return trigger_config_run(test_dev);
}
