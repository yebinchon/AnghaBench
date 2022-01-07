
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_test_device {int config_mutex; } ;


 int EINVAL ;
 unsigned long UINT_MAX ;
 int WARN_ON (int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int test_dev_config_update_uint_sync(struct kmod_test_device *test_dev,
         const char *buf, size_t size,
         unsigned int *config,
         int (*test_sync)(struct kmod_test_device *test_dev))
{
 int ret;
 unsigned long new;
 unsigned int old_val;

 ret = kstrtoul(buf, 10, &new);
 if (ret)
  return ret;

 if (new > UINT_MAX)
  return -EINVAL;

 mutex_lock(&test_dev->config_mutex);

 old_val = *config;
 *(unsigned int *)config = new;

 ret = test_sync(test_dev);
 if (ret) {
  *(unsigned int *)config = old_val;

  ret = test_sync(test_dev);
  WARN_ON(ret);

  mutex_unlock(&test_dev->config_mutex);
  return -EINVAL;
 }

 mutex_unlock(&test_dev->config_mutex);

 return size;
}
