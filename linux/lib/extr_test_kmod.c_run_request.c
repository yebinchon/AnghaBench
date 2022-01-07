
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int test_case; int test_fs; int test_driver; } ;
struct kmod_test_device_info {int need_mod_put; int thread_idx; int * task_sync; int fs_sync; int ret_sync; struct kmod_test_device* test_dev; } ;
struct kmod_test_device {int thread_mutex; int dev; struct test_config config; } ;


 int BUG () ;
 int EINVAL ;


 int dev_dbg (int ,char*,int ) ;
 int get_fs_type (int ) ;
 int kmod_test_done_check (struct kmod_test_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_module (char*,int ) ;
 int test_kmod_put_module (struct kmod_test_device_info*) ;

__attribute__((used)) static int run_request(void *data)
{
 struct kmod_test_device_info *info = data;
 struct kmod_test_device *test_dev = info->test_dev;
 struct test_config *config = &test_dev->config;

 switch (config->test_case) {
 case 129:
  info->ret_sync = request_module("%s", config->test_driver);
  break;
 case 128:
  info->fs_sync = get_fs_type(config->test_fs);
  info->need_mod_put = 1;
  break;
 default:

  BUG();
  return -EINVAL;
 }

 dev_dbg(test_dev->dev, "Ran thread %u\n", info->thread_idx);

 test_kmod_put_module(info);

 mutex_lock(&test_dev->thread_mutex);
 info->task_sync = ((void*)0);
 kmod_test_done_check(test_dev, info->thread_idx);
 mutex_unlock(&test_dev->thread_mutex);

 return 0;
}
