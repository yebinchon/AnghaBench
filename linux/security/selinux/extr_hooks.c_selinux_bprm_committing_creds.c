
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct task_security_struct {scalar_t__ sid; scalar_t__ osid; } ;
struct rlimit {int rlim_cur; int rlim_max; } ;
struct linux_binprm {int cred; } ;
struct TYPE_11__ {TYPE_2__* signal; } ;
struct TYPE_10__ {TYPE_1__* signal; scalar_t__ pdeath_signal; int files; } ;
struct TYPE_9__ {struct rlimit* rlim; } ;
struct TYPE_8__ {struct rlimit* rlim; } ;


 int CONFIG_POSIX_TIMERS ;
 scalar_t__ IS_ENABLED (int ) ;
 int PROCESS__RLIMITINH ;
 int RLIMIT_CPU ;
 int RLIM_NLIMITS ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (int *,scalar_t__,scalar_t__,int ,int ,int *) ;
 TYPE_3__* current ;
 int flush_unauthorized_files (int ,int ) ;
 TYPE_6__ init_task ;
 int min (int ,int ) ;
 int rlimit (int ) ;
 struct task_security_struct* selinux_cred (int ) ;
 int selinux_state ;
 int task_lock (TYPE_3__*) ;
 int task_unlock (TYPE_3__*) ;
 int update_rlimit_cpu (TYPE_3__*,int ) ;

__attribute__((used)) static void selinux_bprm_committing_creds(struct linux_binprm *bprm)
{
 struct task_security_struct *new_tsec;
 struct rlimit *rlim, *initrlim;
 int rc, i;

 new_tsec = selinux_cred(bprm->cred);
 if (new_tsec->sid == new_tsec->osid)
  return;


 flush_unauthorized_files(bprm->cred, current->files);


 current->pdeath_signal = 0;
 rc = avc_has_perm(&selinux_state,
     new_tsec->osid, new_tsec->sid, SECCLASS_PROCESS,
     PROCESS__RLIMITINH, ((void*)0));
 if (rc) {

  task_lock(current);
  for (i = 0; i < RLIM_NLIMITS; i++) {
   rlim = current->signal->rlim + i;
   initrlim = init_task.signal->rlim + i;
   rlim->rlim_cur = min(rlim->rlim_max, initrlim->rlim_cur);
  }
  task_unlock(current);
  if (IS_ENABLED(CONFIG_POSIX_TIMERS))
   update_rlimit_cpu(current, rlimit(RLIMIT_CPU));
 }
}
