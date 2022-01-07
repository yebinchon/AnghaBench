
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;


 int EINVAL ;
 long U8_MAX ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_fw_mutex ;

__attribute__((used)) static int test_dev_config_update_u8(const char *buf, size_t size, u8 *cfg)
{
 int ret;
 long new;

 ret = kstrtol(buf, 10, &new);
 if (ret)
  return ret;

 if (new > U8_MAX)
  return -EINVAL;

 mutex_lock(&test_fw_mutex);
 *(u8 *)cfg = new;
 mutex_unlock(&test_fw_mutex);


 return size;
}
