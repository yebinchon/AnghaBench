
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_test_device {int config_mutex; } ;


 int EINVAL ;
 long INT_MAX ;
 long INT_MIN ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int test_dev_config_update_int(struct kmod_test_device *test_dev,
          const char *buf, size_t size,
          int *config)
{
 int ret;
 long new;

 ret = kstrtol(buf, 10, &new);
 if (ret)
  return ret;

 if (new < INT_MIN || new > INT_MAX)
  return -EINVAL;

 mutex_lock(&test_dev->config_mutex);
 *config = new;
 mutex_unlock(&test_dev->config_mutex);

 return size;
}
