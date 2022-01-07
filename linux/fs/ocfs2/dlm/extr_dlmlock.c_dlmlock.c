
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dlm_lockstatus {int status; int flags; struct dlm_lock* lockid; } ;
struct dlm_lock_resource {scalar_t__ owner; int spinlock; } ;
struct dlm_lock {void* astdata; struct dlm_lockstatus* lksb; int * bast; int * ast; struct dlm_lock_resource* lockres; } ;
struct dlm_ctxt {scalar_t__ node_num; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
typedef int dlm_bastlockfunc_t ;
typedef int dlm_astlockfunc_t ;


 int DLM_BADARGS ;
 int DLM_BADPARAM ;
 int DLM_FORWARD ;
 int DLM_IVBUFLEN ;
 int DLM_IVLOCKID ;
 int DLM_LKSB_GET_LVB ;
 int DLM_LOCKID_NAME_MAX ;
 int DLM_MIGRATING ;
 int DLM_NODE_DEATH_WAIT_MAX ;
 int DLM_NORMAL ;
 int DLM_NOTQUEUED ;
 int DLM_RECOVERING ;
 int LKM_CONVERT ;
 int LKM_EXMODE ;
 int LKM_GET_LVB ;
 int LKM_LOCAL ;
 int LKM_NLMODE ;
 int LKM_PRMODE ;
 int LKM_RECOVERY ;
 int LKM_VALBLK ;
 int LKM_VALID_FLAGS ;
 int ML_ERROR ;
 int dlm_error (int) ;
 struct dlm_lock_resource* dlm_get_lock_resource (struct dlm_ctxt*,char const*,int,int) ;
 int dlm_get_next_cookie (scalar_t__,int *) ;
 int dlm_is_recovery_lock (char const*,int) ;
 int dlm_kick_thread (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_lock_attach_lockres (struct dlm_lock*,struct dlm_lock_resource*) ;
 int dlm_lock_put (struct dlm_lock*) ;
 int dlm_lockres_calc_usage (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_lockres_drop_inflight_ref (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_lockres_get (struct dlm_lock_resource*) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 struct dlm_lock* dlm_new_lock (int,scalar_t__,int ,struct dlm_lockstatus*) ;
 int dlm_wait_for_node_death (struct dlm_ctxt*,scalar_t__,int ) ;
 int dlm_wait_for_recovery (struct dlm_ctxt*) ;
 int dlmconvert_master (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int,int) ;
 int dlmconvert_remote (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int,int) ;
 int dlmlock_master (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ;
 int dlmlock_remote (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ;
 int mlog (int ,char*,...) ;
 int msleep (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

enum dlm_status dlmlock(struct dlm_ctxt *dlm, int mode,
   struct dlm_lockstatus *lksb, int flags,
   const char *name, int namelen, dlm_astlockfunc_t *ast,
   void *data, dlm_bastlockfunc_t *bast)
{
 enum dlm_status status;
 struct dlm_lock_resource *res = ((void*)0);
 struct dlm_lock *lock = ((void*)0);
 int convert = 0, recovery = 0;




 if (!lksb) {
  dlm_error(DLM_BADARGS);
  return DLM_BADARGS;
 }

 status = DLM_BADPARAM;
 if (mode != LKM_EXMODE && mode != LKM_PRMODE && mode != LKM_NLMODE) {
  dlm_error(status);
  goto error;
 }

 if (flags & ~LKM_VALID_FLAGS) {
  dlm_error(status);
  goto error;
 }

 convert = (flags & LKM_CONVERT);
 recovery = (flags & LKM_RECOVERY);

 if (recovery &&
     (!dlm_is_recovery_lock(name, namelen) || convert) ) {
  dlm_error(status);
  goto error;
 }
 if (convert && (flags & LKM_LOCAL)) {
  mlog(ML_ERROR, "strange LOCAL convert request!\n");
  goto error;
 }

 if (convert) {



  lock = lksb->lockid;
  if (!lock) {
   mlog(ML_ERROR, "NULL lock pointer in convert "
        "request\n");
   goto error;
  }

  res = lock->lockres;
  if (!res) {
   mlog(ML_ERROR, "NULL lockres pointer in convert "
        "request\n");
   goto error;
  }
  dlm_lockres_get(res);






  if (lock->lksb != lksb || lock->ast != ast ||
      lock->bast != bast || lock->astdata != data) {
   status = DLM_BADARGS;
   mlog(ML_ERROR, "new args:  lksb=%p, ast=%p, bast=%p, "
        "astdata=%p\n", lksb, ast, bast, data);
   mlog(ML_ERROR, "orig args: lksb=%p, ast=%p, bast=%p, "
        "astdata=%p\n", lock->lksb, lock->ast,
        lock->bast, lock->astdata);
   goto error;
  }
retry_convert:
  dlm_wait_for_recovery(dlm);

  if (res->owner == dlm->node_num)
   status = dlmconvert_master(dlm, res, lock, flags, mode);
  else
   status = dlmconvert_remote(dlm, res, lock, flags, mode);
  if (status == DLM_RECOVERING || status == DLM_MIGRATING ||
      status == DLM_FORWARD) {




   mlog(0, "retrying convert with migration/recovery/"
        "in-progress\n");
   msleep(100);
   goto retry_convert;
  }
 } else {
  u64 tmpcookie;


  status = DLM_BADARGS;
  if (!name) {
   dlm_error(status);
   goto error;
  }

  status = DLM_IVBUFLEN;
  if (namelen > DLM_LOCKID_NAME_MAX || namelen < 1) {
   dlm_error(status);
   goto error;
  }

  dlm_get_next_cookie(dlm->node_num, &tmpcookie);
  lock = dlm_new_lock(mode, dlm->node_num, tmpcookie, lksb);
  if (!lock) {
   dlm_error(status);
   goto error;
  }

  if (!recovery)
   dlm_wait_for_recovery(dlm);


  res = dlm_get_lock_resource(dlm, name, namelen, flags);
  if (!res) {
   status = DLM_IVLOCKID;
   dlm_error(status);
   goto error;
  }

  mlog(0, "type=%d, flags = 0x%x\n", mode, flags);
  mlog(0, "creating lock: lock=%p res=%p\n", lock, res);

  dlm_lock_attach_lockres(lock, res);
  lock->ast = ast;
  lock->bast = bast;
  lock->astdata = data;

retry_lock:
  if (flags & LKM_VALBLK) {
   mlog(0, "LKM_VALBLK passed by caller\n");



   if (mode < LKM_PRMODE)
    flags &= ~LKM_VALBLK;
   else {
    flags |= LKM_GET_LVB;
    lock->lksb->flags |= DLM_LKSB_GET_LVB;
   }
  }

  if (res->owner == dlm->node_num)
   status = dlmlock_master(dlm, res, lock, flags);
  else
   status = dlmlock_remote(dlm, res, lock, flags);

  if (status == DLM_RECOVERING || status == DLM_MIGRATING ||
      status == DLM_FORWARD) {
   msleep(100);
   if (recovery) {
    if (status != DLM_RECOVERING)
     goto retry_lock;



    dlm_wait_for_node_death(dlm, res->owner,
      DLM_NODE_DEATH_WAIT_MAX);
   } else {
    dlm_wait_for_recovery(dlm);
    goto retry_lock;
   }
  }


  spin_lock(&res->spinlock);
  dlm_lockres_drop_inflight_ref(dlm, res);
  spin_unlock(&res->spinlock);

  dlm_lockres_calc_usage(dlm, res);
  dlm_kick_thread(dlm, res);

  if (status != DLM_NORMAL) {
   lock->lksb->flags &= ~DLM_LKSB_GET_LVB;
   if (status != DLM_NOTQUEUED)
    dlm_error(status);
   goto error;
  }
 }

error:
 if (status != DLM_NORMAL) {
  if (lock && !convert)
   dlm_lock_put(lock);

  lksb->status = status;
 }



 if (res)
  dlm_lockres_put(res);

 return status;
}
