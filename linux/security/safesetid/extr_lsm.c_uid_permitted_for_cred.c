
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int suid; int euid; int uid; } ;
typedef int kuid_t ;


 scalar_t__ SIDPOL_CONSTRAINED ;
 int __kuid_val (int ) ;
 int pr_warn (char*,int ,int ,int ,int ) ;
 scalar_t__ setuid_policy_lookup (int ,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static bool uid_permitted_for_cred(const struct cred *old, kuid_t new_uid)
{
 bool permitted;


 if (uid_eq(new_uid, old->uid) || uid_eq(new_uid, old->euid) ||
     uid_eq(new_uid, old->suid))
  return 1;





 permitted =
     setuid_policy_lookup(old->uid, new_uid) != SIDPOL_CONSTRAINED;
 if (!permitted) {
  pr_warn("UID transition ((%d,%d,%d) -> %d) blocked\n",
   __kuid_val(old->uid), __kuid_val(old->euid),
   __kuid_val(old->suid), __kuid_val(new_uid));
 }
 return permitted;
}
