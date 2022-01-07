
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 size_t aa_g_audit ;
 int apparmor_enabled ;
 scalar_t__ apparmor_initialized ;
 char** audit_mode_names ;
 int policy_view_capable (int *) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int param_get_audit(char *buffer, const struct kernel_param *kp)
{
 if (!apparmor_enabled)
  return -EINVAL;
 if (apparmor_initialized && !policy_view_capable(((void*)0)))
  return -EPERM;
 return sprintf(buffer, "%s", audit_mode_names[aa_g_audit]);
}
