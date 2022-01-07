
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_test_device {int config_mutex; } ;


 int __kmod_config_init (struct kmod_test_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kmod_config_init(struct kmod_test_device *test_dev)
{
 int ret;

 mutex_lock(&test_dev->config_mutex);
 ret = __kmod_config_init(test_dev);
 mutex_unlock(&test_dev->config_mutex);

 return ret;
}
