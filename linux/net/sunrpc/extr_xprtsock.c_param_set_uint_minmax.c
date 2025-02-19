
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 int kstrtouint (char const*,int ,unsigned int*) ;

__attribute__((used)) static int param_set_uint_minmax(const char *val,
  const struct kernel_param *kp,
  unsigned int min, unsigned int max)
{
 unsigned int num;
 int ret;

 if (!val)
  return -EINVAL;
 ret = kstrtouint(val, 0, &num);
 if (ret)
  return ret;
 if (num < min || num > max)
  return -EINVAL;
 *((unsigned int *)kp->arg) = num;
 return 0;
}
