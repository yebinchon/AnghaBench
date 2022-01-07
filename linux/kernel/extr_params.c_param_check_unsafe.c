
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int flags; int name; } ;


 int KERNEL_PARAM_FL_HWPARAM ;
 int KERNEL_PARAM_FL_UNSAFE ;
 int LOCKDEP_STILL_OK ;
 int LOCKDOWN_MODULE_PARAMETERS ;
 int TAINT_USER ;
 int add_taint (int ,int ) ;
 int pr_notice (char*,int ) ;
 scalar_t__ security_locked_down (int ) ;

__attribute__((used)) static bool param_check_unsafe(const struct kernel_param *kp)
{
 if (kp->flags & KERNEL_PARAM_FL_HWPARAM &&
     security_locked_down(LOCKDOWN_MODULE_PARAMETERS))
  return 0;

 if (kp->flags & KERNEL_PARAM_FL_UNSAFE) {
  pr_notice("Setting dangerous option %s - tainting kernel\n",
     kp->name);
  add_taint(TAINT_USER, LOCKDEP_STILL_OK);
 }

 return 1;
}
