
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int state; int wq; int spinlock; scalar_t__ migration_pending; int asts_reserved; } ;
struct dlm_ctxt {int migration_wq; } ;


 int BUG_ON (int) ;
 int DLM_LOCK_RES_MIGRATING ;
 int atomic_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void dlm_lockres_release_ast(struct dlm_ctxt *dlm,
        struct dlm_lock_resource *res)
{
 if (!atomic_dec_and_lock(&res->asts_reserved, &res->spinlock))
  return;

 if (!res->migration_pending) {
  spin_unlock(&res->spinlock);
  return;
 }

 BUG_ON(res->state & DLM_LOCK_RES_MIGRATING);
 res->migration_pending = 0;
 res->state |= DLM_LOCK_RES_MIGRATING;
 spin_unlock(&res->spinlock);
 wake_up(&res->wq);
 wake_up(&dlm->migration_wq);
}
