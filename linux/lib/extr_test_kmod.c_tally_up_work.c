
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {unsigned int num_threads; int test_result; } ;
struct kmod_test_device_info {int dummy; } ;
struct kmod_test_device {int thread_mutex; struct kmod_test_device_info* info; int dev; struct test_config config; } ;


 int dev_info (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tally_work_test (struct kmod_test_device_info*) ;

__attribute__((used)) static void tally_up_work(struct kmod_test_device *test_dev)
{
 struct test_config *config = &test_dev->config;
 struct kmod_test_device_info *info;
 unsigned int idx;
 int err_ret = 0;
 int ret = 0;

 mutex_lock(&test_dev->thread_mutex);

 dev_info(test_dev->dev, "Results:\n");

 for (idx=0; idx < config->num_threads; idx++) {
  info = &test_dev->info[idx];
  ret = tally_work_test(info);
  if (ret)
   err_ret = ret;
 }





 config->test_result = err_ret;

 mutex_unlock(&test_dev->thread_mutex);
}
