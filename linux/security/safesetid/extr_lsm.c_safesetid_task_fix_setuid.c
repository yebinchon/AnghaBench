
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int fsuid; int suid; int euid; int uid; } ;


 int EACCES ;
 int INVALID_UID ;
 scalar_t__ SIDPOL_DEFAULT ;
 int SIGKILL ;
 int force_sig (int ) ;
 scalar_t__ setuid_policy_lookup (int ,int ) ;
 scalar_t__ uid_permitted_for_cred (struct cred const*,int ) ;

__attribute__((used)) static int safesetid_task_fix_setuid(struct cred *new,
         const struct cred *old,
         int flags)
{


 if (setuid_policy_lookup(old->uid, INVALID_UID) == SIDPOL_DEFAULT)
  return 0;

 if (uid_permitted_for_cred(old, new->uid) &&
     uid_permitted_for_cred(old, new->euid) &&
     uid_permitted_for_cred(old, new->suid) &&
     uid_permitted_for_cred(old, new->fsuid))
  return 0;






 force_sig(SIGKILL);
 return -EACCES;
}
