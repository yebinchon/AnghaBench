
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 int aa_g_path_max ;
 int apparmor_enabled ;
 scalar_t__ apparmor_initialized ;
 int param_set_uint (char const*,struct kernel_param const*) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int param_set_aauint(const char *val, const struct kernel_param *kp)
{
 int error;

 if (!apparmor_enabled)
  return -EINVAL;

 if (apparmor_initialized)
  return -EPERM;

 error = param_set_uint(val, kp);
 pr_info("AppArmor: buffer size set to %d bytes\n", aa_g_path_max);

 return error;
}
