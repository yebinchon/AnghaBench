
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 int apparmor_enabled ;
 scalar_t__ apparmor_initialized ;
 int param_get_uint (char*,struct kernel_param const*) ;
 int policy_view_capable (int *) ;

__attribute__((used)) static int param_get_aauint(char *buffer, const struct kernel_param *kp)
{
 if (!apparmor_enabled)
  return -EINVAL;
 if (apparmor_initialized && !policy_view_capable(((void*)0)))
  return -EPERM;
 return param_get_uint(buffer, kp);
}
