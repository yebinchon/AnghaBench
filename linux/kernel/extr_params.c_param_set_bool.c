
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int arg; } ;


 int strtobool (char const*,int ) ;

int param_set_bool(const char *val, const struct kernel_param *kp)
{

 if (!val) val = "1";


 return strtobool(val, kp->arg);
}
