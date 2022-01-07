
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct linux_binprm {int cred; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {int cred_guard_mutex; } ;


 int ENOMEM ;
 int ERESTARTNOINTR ;
 TYPE_2__* current ;
 scalar_t__ likely (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int prepare_exec_creds () ;

__attribute__((used)) static int prepare_bprm_creds(struct linux_binprm *bprm)
{
 if (mutex_lock_interruptible(&current->signal->cred_guard_mutex))
  return -ERESTARTNOINTR;

 bprm->cred = prepare_exec_creds();
 if (likely(bprm->cred))
  return 0;

 mutex_unlock(&current->signal->cred_guard_mutex);
 return -ENOMEM;
}
