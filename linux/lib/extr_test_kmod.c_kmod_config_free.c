
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int dummy; } ;
struct kmod_test_device {int config_mutex; struct test_config config; } ;


 int __kmod_config_free (struct test_config*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void kmod_config_free(struct kmod_test_device *test_dev)
{
 struct test_config *config;

 if (!test_dev)
  return;

 config = &test_dev->config;

 mutex_lock(&test_dev->config_mutex);
 __kmod_config_free(config);
 mutex_unlock(&test_dev->config_mutex);
}
