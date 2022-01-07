
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {unsigned int num_threads; } ;
struct kmod_test_device_info {scalar_t__ need_mod_put; scalar_t__ task_sync; } ;
struct kmod_test_device {int thread_mutex; int dev; struct kmod_test_device_info* info; struct test_config config; } ;


 int IS_ERR (scalar_t__) ;
 int dev_info (int ,char*,...) ;
 int kthread_stop (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_kmod_put_module (struct kmod_test_device_info*) ;

__attribute__((used)) static void test_dev_kmod_stop_tests(struct kmod_test_device *test_dev)
{
 struct test_config *config = &test_dev->config;
 struct kmod_test_device_info *info;
 unsigned int i;

 dev_info(test_dev->dev, "Ending request_module() tests\n");

 mutex_lock(&test_dev->thread_mutex);

 for (i=0; i < config->num_threads; i++) {
  info = &test_dev->info[i];
  if (info->task_sync && !IS_ERR(info->task_sync)) {
   dev_info(test_dev->dev,
     "Stopping still-running thread %i\n", i);
   kthread_stop(info->task_sync);
  }
  if (info->task_sync && info->need_mod_put)
   test_kmod_put_module(info);
 }

 mutex_unlock(&test_dev->thread_mutex);
}
