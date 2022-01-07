
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct cred {int uid; } ;


 unsigned int CAP_OPT_INSETID ;
 int CAP_SETUID ;
 int EPERM ;
 int INVALID_UID ;
 scalar_t__ SIDPOL_DEFAULT ;
 int __kuid_val (int ) ;
 int pr_warn (char*,int ) ;
 scalar_t__ setuid_policy_lookup (int ,int ) ;

__attribute__((used)) static int safesetid_security_capable(const struct cred *cred,
          struct user_namespace *ns,
          int cap,
          unsigned int opts)
{

 if (cap != CAP_SETUID)
  return 0;






 if ((opts & CAP_OPT_INSETID) != 0)
  return 0;





 if (setuid_policy_lookup(cred->uid, INVALID_UID) == SIDPOL_DEFAULT)
  return 0;





 pr_warn("Operation requires CAP_SETUID, which is not available to UID %u for operations besides approved set*uid transitions\n",
  __kuid_val(cred->uid));
 return -EPERM;
}
