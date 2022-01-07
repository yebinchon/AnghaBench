
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int* arg; } ;


 int param_set_bool (char const*,struct kernel_param*) ;

int param_set_bint(const char *val, const struct kernel_param *kp)
{

 struct kernel_param boolkp = *kp;
 bool v;
 int ret;

 boolkp.arg = &v;

 ret = param_set_bool(val, &boolkp);
 if (ret == 0)
  *(int *)kp->arg = v;
 return ret;
}
