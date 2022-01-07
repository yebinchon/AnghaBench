
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_test_device_info {unsigned int thread_idx; int ret_sync; int * task_sync; struct kmod_test_device* test_dev; } ;
struct kmod_test_device {int test_is_oom; int thread_mutex; int dev; struct kmod_test_device_info* info; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int *) ;
 int KBUILD_MODNAME ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 int * kthread_run (int ,struct kmod_test_device_info*,char*,int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int run_request ;

__attribute__((used)) static int try_one_request(struct kmod_test_device *test_dev, unsigned int idx)
{
 struct kmod_test_device_info *info = &test_dev->info[idx];
 int fail_ret = -ENOMEM;

 mutex_lock(&test_dev->thread_mutex);

 info->thread_idx = idx;
 info->test_dev = test_dev;
 info->task_sync = kthread_run(run_request, info, "%s-%u",
          KBUILD_MODNAME, idx);

 if (!info->task_sync || IS_ERR(info->task_sync)) {
  test_dev->test_is_oom = 1;
  dev_err(test_dev->dev, "Setting up thread %u failed\n", idx);
  info->task_sync = ((void*)0);
  goto err_out;
 } else
  dev_dbg(test_dev->dev, "Kicked off thread %u\n", idx);

 mutex_unlock(&test_dev->thread_mutex);

 return 0;

err_out:
 info->ret_sync = fail_ret;
 mutex_unlock(&test_dev->thread_mutex);

 return fail_ret;
}
