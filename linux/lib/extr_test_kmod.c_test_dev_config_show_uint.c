
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_test_device {int config_mutex; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t test_dev_config_show_uint(struct kmod_test_device *test_dev,
      char *buf,
      unsigned int config)
{
 unsigned int val;

 mutex_lock(&test_dev->config_mutex);
 val = config;
 mutex_unlock(&test_dev->config_mutex);

 return snprintf(buf, PAGE_SIZE, "%u\n", val);
}
