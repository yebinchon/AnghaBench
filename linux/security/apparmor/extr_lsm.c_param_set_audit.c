
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int AUDIT_MAX_INDEX ;
 int EINVAL ;
 int EPERM ;
 int aa_g_audit ;
 int apparmor_enabled ;
 scalar_t__ apparmor_initialized ;
 int audit_mode_names ;
 int match_string (int ,int ,char const*) ;
 int policy_admin_capable (int *) ;

__attribute__((used)) static int param_set_audit(const char *val, const struct kernel_param *kp)
{
 int i;

 if (!apparmor_enabled)
  return -EINVAL;
 if (!val)
  return -EINVAL;
 if (apparmor_initialized && !policy_admin_capable(((void*)0)))
  return -EPERM;

 i = match_string(audit_mode_names, AUDIT_MAX_INDEX, val);
 if (i < 0)
  return -EINVAL;

 aa_g_audit = i;
 return 0;
}
