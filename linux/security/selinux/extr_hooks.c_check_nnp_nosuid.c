
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct task_security_struct {scalar_t__ sid; } ;
struct linux_binprm {int unsafe; TYPE_2__* file; } ;
struct TYPE_3__ {int mnt; } ;
struct TYPE_4__ {TYPE_1__ f_path; } ;


 int EACCES ;
 int EPERM ;
 int LSM_UNSAFE_NO_NEW_PRIVS ;
 int PROCESS2__NNP_TRANSITION ;
 int PROCESS2__NOSUID_TRANSITION ;
 int SECCLASS_PROCESS2 ;
 int avc_has_perm (int *,scalar_t__,scalar_t__,int ,int ,int *) ;
 int mnt_may_suid (int ) ;
 int security_bounded_transition (int *,scalar_t__,scalar_t__) ;
 scalar_t__ selinux_policycap_nnp_nosuid_transition () ;
 int selinux_state ;

__attribute__((used)) static int check_nnp_nosuid(const struct linux_binprm *bprm,
       const struct task_security_struct *old_tsec,
       const struct task_security_struct *new_tsec)
{
 int nnp = (bprm->unsafe & LSM_UNSAFE_NO_NEW_PRIVS);
 int nosuid = !mnt_may_suid(bprm->file->f_path.mnt);
 int rc;
 u32 av;

 if (!nnp && !nosuid)
  return 0;

 if (new_tsec->sid == old_tsec->sid)
  return 0;







 if (selinux_policycap_nnp_nosuid_transition()) {
  av = 0;
  if (nnp)
   av |= PROCESS2__NNP_TRANSITION;
  if (nosuid)
   av |= PROCESS2__NOSUID_TRANSITION;
  rc = avc_has_perm(&selinux_state,
      old_tsec->sid, new_tsec->sid,
      SECCLASS_PROCESS2, av, ((void*)0));
  if (!rc)
   return 0;
 }






 rc = security_bounded_transition(&selinux_state, old_tsec->sid,
      new_tsec->sid);
 if (!rc)
  return 0;






 if (nnp)
  return -EPERM;
 return -EACCES;
}
