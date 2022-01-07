
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; int name; } ;
struct dlm_lock_resource {scalar_t__ owner; int wq; int spinlock; int granted; TYPE_2__ lockname; int state; int blocked; } ;
struct TYPE_3__ {int type; } ;
struct dlm_lock {int lock_pending; int list; TYPE_1__ ml; } ;
struct dlm_ctxt {scalar_t__ node_num; int name; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int DLM_DENIED ;
 int DLM_LOCK_RES_IN_PROGRESS ;
 int DLM_NORMAL ;
 int DLM_NOTQUEUED ;
 int DLM_RECOVERING ;
 int __dlm_wait_on_lockres (struct dlm_lock_resource*) ;
 int dlm_error (int) ;
 scalar_t__ dlm_is_recovery_lock (int ,int ) ;
 int dlm_lock_get (struct dlm_lock*) ;
 int dlm_lock_put (struct dlm_lock*) ;
 int dlm_lockres_calc_usage (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_revert_pending_lock (struct dlm_lock_resource*,struct dlm_lock*) ;
 int dlm_send_remote_lock_request (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ;
 int list_add_tail (int *,int *) ;
 int list_move_tail (int *,int *) ;
 int mlog (int ,char*,int ,scalar_t__,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static enum dlm_status dlmlock_remote(struct dlm_ctxt *dlm,
          struct dlm_lock_resource *res,
          struct dlm_lock *lock, int flags)
{
 enum dlm_status status = DLM_DENIED;
 int lockres_changed = 1;

 mlog(0, "type=%d, lockres %.*s, flags = 0x%x\n",
      lock->ml.type, res->lockname.len,
      res->lockname.name, flags);





 spin_lock(&res->spinlock);
 __dlm_wait_on_lockres(res);
 if (res->owner == dlm->node_num) {
  spin_unlock(&res->spinlock);
  return DLM_RECOVERING;
 }
 res->state |= DLM_LOCK_RES_IN_PROGRESS;


 dlm_lock_get(lock);
 list_add_tail(&lock->list, &res->blocked);
 lock->lock_pending = 1;
 spin_unlock(&res->spinlock);



 status = dlm_send_remote_lock_request(dlm, res, lock, flags);

 spin_lock(&res->spinlock);
 res->state &= ~DLM_LOCK_RES_IN_PROGRESS;
 lock->lock_pending = 0;
 if (status != DLM_NORMAL) {
  if (status == DLM_RECOVERING &&
      dlm_is_recovery_lock(res->lockname.name,
      res->lockname.len)) {



   mlog(0, "%s: recovery lock was owned by "
        "dead node %u, remaster it now.\n",
        dlm->name, res->owner);
  } else if (status != DLM_NOTQUEUED) {






   lockres_changed = 0;
   dlm_error(status);
  }
  dlm_revert_pending_lock(res, lock);
  dlm_lock_put(lock);
 } else if (dlm_is_recovery_lock(res->lockname.name,
     res->lockname.len)) {




  mlog(0, "%s: $RECOVERY lock for this node (%u) is "
       "mastered by %u; got lock, manually granting (no ast)\n",
       dlm->name, dlm->node_num, res->owner);
  list_move_tail(&lock->list, &res->granted);
 }
 spin_unlock(&res->spinlock);

 if (lockres_changed)
  dlm_lockres_calc_usage(dlm, res);

 wake_up(&res->wq);
 return status;
}
