
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int filename; struct cred* cred; } ;
struct cred {int cap_inheritable; int cap_bset; int cap_permitted; } ;
typedef int kuid_t ;


 scalar_t__ __is_eff (int ,struct cred*) ;
 scalar_t__ __is_real (int ,struct cred*) ;
 scalar_t__ __is_suid (int ,struct cred*) ;
 int cap_combine (int ,int ) ;
 struct cred* current_cred () ;
 int root_privileged () ;
 int warn_setuid_and_fcaps_mixed (int ) ;

__attribute__((used)) static void handle_privileged_root(struct linux_binprm *bprm, bool has_fcap,
       bool *effective, kuid_t root_uid)
{
 const struct cred *old = current_cred();
 struct cred *new = bprm->cred;

 if (!root_privileged())
  return;





 if (has_fcap && __is_suid(root_uid, new)) {
  warn_setuid_and_fcaps_mixed(bprm->filename);
  return;
 }





 if (__is_eff(root_uid, new) || __is_real(root_uid, new)) {

  new->cap_permitted = cap_combine(old->cap_bset,
       old->cap_inheritable);
 }



 if (__is_eff(root_uid, new))
  *effective = 1;
}
