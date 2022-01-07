
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strtobool (char const*,int*) ;
 int test_fw_mutex ;

__attribute__((used)) static int test_dev_config_update_bool(const char *buf, size_t size,
           bool *cfg)
{
 int ret;

 mutex_lock(&test_fw_mutex);
 if (strtobool(buf, cfg) < 0)
  ret = -EINVAL;
 else
  ret = size;
 mutex_unlock(&test_fw_mutex);

 return ret;
}
