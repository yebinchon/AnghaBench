
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_lockstatus {struct dlm_lock* lockid; } ;
struct dlm_lock_resource {scalar_t__ owner; int spinlock; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct dlm_lock {TYPE_1__ ml; struct dlm_lock_resource* lockres; } ;
struct dlm_ctxt {scalar_t__ node_num; int ast_wq; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
typedef int (* dlm_astunlockfunc_t ) (void*,int) ;


 int BUG_ON (int) ;
 int DLM_BADARGS ;
 int DLM_BADPARAM ;
 int DLM_CANCELGRANT ;
 int DLM_FORWARD ;
 int DLM_MIGRATING ;
 int DLM_NOLOCKMGR ;
 int DLM_NORMAL ;
 int DLM_RECOVERING ;
 int LKM_CANCEL ;
 scalar_t__ LKM_EXMODE ;
 int LKM_INVVALBLK ;
 int LKM_VALBLK ;
 int dlm_error (int) ;
 int dlm_kick_thread (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_lock_basts_flushed (struct dlm_ctxt*,struct dlm_lock*) ;
 int dlm_lock_get (struct dlm_lock*) ;
 int dlm_lock_put (struct dlm_lock*) ;
 int dlm_lockres_calc_usage (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_lockres_get (struct dlm_lock_resource*) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int dlmunlock_master (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,struct dlm_lockstatus*,int,int*) ;
 int dlmunlock_remote (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,struct dlm_lockstatus*,int,int*) ;
 int mlog (int ,char*,...) ;
 int msleep (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (void*,int) ;
 int wait_event (int ,int ) ;

enum dlm_status dlmunlock(struct dlm_ctxt *dlm, struct dlm_lockstatus *lksb,
     int flags, dlm_astunlockfunc_t *unlockast, void *data)
{
 enum dlm_status status;
 struct dlm_lock_resource *res;
 struct dlm_lock *lock = ((void*)0);
 int call_ast, is_master;

 if (!lksb) {
  dlm_error(DLM_BADARGS);
  return DLM_BADARGS;
 }

 if (flags & ~(LKM_CANCEL | LKM_VALBLK | LKM_INVVALBLK)) {
  dlm_error(DLM_BADPARAM);
  return DLM_BADPARAM;
 }

 if ((flags & (LKM_VALBLK | LKM_CANCEL)) == (LKM_VALBLK | LKM_CANCEL)) {
  mlog(0, "VALBLK given with CANCEL: ignoring VALBLK\n");
  flags &= ~LKM_VALBLK;
 }

 if (!lksb->lockid || !lksb->lockid->lockres) {
  dlm_error(DLM_BADPARAM);
  return DLM_BADPARAM;
 }

 lock = lksb->lockid;
 BUG_ON(!lock);
 dlm_lock_get(lock);

 res = lock->lockres;
 BUG_ON(!res);
 dlm_lockres_get(res);
retry:
 call_ast = 0;

 mlog(0, "lock=%p res=%p\n", lock, res);

 spin_lock(&res->spinlock);
 is_master = (res->owner == dlm->node_num);
 if (flags & LKM_VALBLK && lock->ml.type != LKM_EXMODE)
  flags &= ~LKM_VALBLK;
 spin_unlock(&res->spinlock);

 if (is_master) {
  status = dlmunlock_master(dlm, res, lock, lksb, flags,
       &call_ast);
  mlog(0, "done calling dlmunlock_master: returned %d, "
       "call_ast is %d\n", status, call_ast);
 } else {
  status = dlmunlock_remote(dlm, res, lock, lksb, flags,
       &call_ast);
  mlog(0, "done calling dlmunlock_remote: returned %d, "
       "call_ast is %d\n", status, call_ast);
 }

 if (status == DLM_RECOVERING ||
     status == DLM_MIGRATING ||
     status == DLM_FORWARD ||
     status == DLM_NOLOCKMGR) {
  msleep(50);

  mlog(0, "retrying unlock due to pending recovery/"
       "migration/in-progress/reconnect\n");
  goto retry;
 }

 if (call_ast) {
  mlog(0, "calling unlockast(%p, %d)\n", data, status);
  if (is_master) {






   dlm_kick_thread(dlm, ((void*)0));
   wait_event(dlm->ast_wq,
       dlm_lock_basts_flushed(dlm, lock));
  }
  (*unlockast)(data, status);
 }

 if (status == DLM_CANCELGRANT)
  status = DLM_NORMAL;

 if (status == DLM_NORMAL) {
  mlog(0, "kicking the thread\n");
  dlm_kick_thread(dlm, res);
 } else
  dlm_error(status);

 dlm_lockres_calc_usage(dlm, res);
 dlm_lockres_put(res);
 dlm_lock_put(lock);

 mlog(0, "returning status=%d!\n", status);
 return status;
}
