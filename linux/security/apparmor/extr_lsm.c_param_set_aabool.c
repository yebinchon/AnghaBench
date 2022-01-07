
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 int apparmor_enabled ;
 scalar_t__ apparmor_initialized ;
 int param_set_bool (char const*,struct kernel_param const*) ;
 int policy_admin_capable (int *) ;

__attribute__((used)) static int param_set_aabool(const char *val, const struct kernel_param *kp)
{
 if (!apparmor_enabled)
  return -EINVAL;
 if (apparmor_initialized && !policy_admin_capable(((void*)0)))
  return -EPERM;
 return param_set_bool(val, kp);
}
