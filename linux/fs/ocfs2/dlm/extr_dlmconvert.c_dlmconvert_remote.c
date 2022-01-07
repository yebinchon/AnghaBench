
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int len; int name; } ;
struct dlm_lock_resource {int state; int wq; int spinlock; TYPE_3__ lockname; int converting; } ;
struct TYPE_4__ {int type; int convert_type; int cookie; } ;
struct dlm_lock {int convert_pending; TYPE_2__* lksb; TYPE_1__ ml; int list; } ;
struct dlm_ctxt {int name; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
struct TYPE_5__ {int flags; } ;


 int DLM_DENIED ;
 int DLM_LKSB_GET_LVB ;
 int DLM_LKSB_PUT_LVB ;
 int DLM_LOCK_RES_IN_PROGRESS ;
 int DLM_LOCK_RES_RECOVERING ;
 int DLM_NORMAL ;
 int DLM_NOTQUEUED ;
 int DLM_RECOVERING ;
 int LKM_EXMODE ;
 int LKM_GET_LVB ;
 int LKM_IVMODE ;
 int LKM_NLMODE ;
 int LKM_PUT_LVB ;
 int LKM_VALBLK ;
 int ML_ERROR ;
 int __dlm_print_one_lock_resource (struct dlm_lock_resource*) ;
 int __dlm_wait_on_lockres (struct dlm_lock_resource*) ;
 int be64_to_cpu (int ) ;
 int dlm_error (int) ;
 int dlm_get_lock_cookie_node (int ) ;
 int dlm_get_lock_cookie_seq (int ) ;
 int dlm_revert_pending_convert (struct dlm_lock_resource*,struct dlm_lock*) ;
 int dlm_send_remote_convert_request (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int,int) ;
 int list_move_tail (int *,int *) ;
 int mlog (int ,char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

enum dlm_status dlmconvert_remote(struct dlm_ctxt *dlm,
      struct dlm_lock_resource *res,
      struct dlm_lock *lock, int flags, int type)
{
 enum dlm_status status;

 mlog(0, "type=%d, convert_type=%d, busy=%d\n", lock->ml.type,
      lock->ml.convert_type, res->state & DLM_LOCK_RES_IN_PROGRESS);

 spin_lock(&res->spinlock);
 if (res->state & DLM_LOCK_RES_RECOVERING) {
  mlog(0, "bailing out early since res is RECOVERING "
       "on secondary queue\n");

  status = DLM_RECOVERING;
  goto bail;
 }

 __dlm_wait_on_lockres(res);

 if (lock->ml.convert_type != LKM_IVMODE) {
  __dlm_print_one_lock_resource(res);
  mlog(ML_ERROR, "converting a remote lock that is already "
       "converting! (cookie=%u:%llu, conv=%d)\n",
       dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
       dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)),
       lock->ml.convert_type);
  status = DLM_DENIED;
  goto bail;
 }

 if (lock->ml.type == type && lock->ml.convert_type == LKM_IVMODE) {
  mlog(0, "last convert request returned DLM_RECOVERING, but "
       "owner has already queued and sent ast to me. res %.*s, "
       "(cookie=%u:%llu, type=%d, conv=%d)\n",
       res->lockname.len, res->lockname.name,
       dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
       dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)),
       lock->ml.type, lock->ml.convert_type);
  status = DLM_NORMAL;
  goto bail;
 }

 res->state |= DLM_LOCK_RES_IN_PROGRESS;


 list_move_tail(&lock->list, &res->converting);
 lock->convert_pending = 1;
 lock->ml.convert_type = type;

 if (flags & LKM_VALBLK) {
  if (lock->ml.type == LKM_EXMODE) {
   flags |= LKM_PUT_LVB;
   lock->lksb->flags |= DLM_LKSB_PUT_LVB;
  } else {
   if (lock->ml.convert_type == LKM_NLMODE)
    flags &= ~LKM_VALBLK;
   else {
    flags |= LKM_GET_LVB;
    lock->lksb->flags |= DLM_LKSB_GET_LVB;
   }
  }
 }
 spin_unlock(&res->spinlock);



 status = dlm_send_remote_convert_request(dlm, res, lock, flags, type);

 spin_lock(&res->spinlock);
 res->state &= ~DLM_LOCK_RES_IN_PROGRESS;




 if (status != DLM_NORMAL) {
  if (status != DLM_NOTQUEUED)
   dlm_error(status);
  dlm_revert_pending_convert(res, lock);
 } else if (!lock->convert_pending) {
  mlog(0, "%s: res %.*s, owner died and lock has been moved back "
    "to granted list, retry convert.\n",
    dlm->name, res->lockname.len, res->lockname.name);
  status = DLM_RECOVERING;
 }

 lock->convert_pending = 0;
bail:
 spin_unlock(&res->spinlock);



 wake_up(&res->wq);

 return status;
}
