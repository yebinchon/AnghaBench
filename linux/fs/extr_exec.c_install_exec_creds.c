
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct linux_binprm {int * cred; } ;
struct TYPE_5__ {TYPE_1__* signal; int mm; } ;
struct TYPE_4__ {int cred_guard_mutex; } ;


 scalar_t__ SUID_DUMP_USER ;
 int commit_creds (int *) ;
 TYPE_2__* current ;
 scalar_t__ get_dumpable (int ) ;
 int mutex_unlock (int *) ;
 int perf_event_exit_task (TYPE_2__*) ;
 int security_bprm_committed_creds (struct linux_binprm*) ;
 int security_bprm_committing_creds (struct linux_binprm*) ;

void install_exec_creds(struct linux_binprm *bprm)
{
 security_bprm_committing_creds(bprm);

 commit_creds(bprm->cred);
 bprm->cred = ((void*)0);







 if (get_dumpable(current->mm) != SUID_DUMP_USER)
  perf_event_exit_task(current);





 security_bprm_committed_creds(bprm);
 mutex_unlock(&current->signal->cred_guard_mutex);
}
