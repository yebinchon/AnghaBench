
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_lockstatus {int flags; int lvb; } ;
struct dlm_lock_resource {scalar_t__ owner; int spinlock; int lvb; } ;
struct TYPE_2__ {scalar_t__ node; } ;
struct dlm_lock {TYPE_1__ ml; struct dlm_lockstatus* lksb; } ;
struct dlm_ctxt {scalar_t__ node_num; } ;


 int BUG_ON (int) ;
 int DLM_LKSB_GET_LVB ;
 int DLM_LKSB_PUT_LVB ;
 int DLM_LVB_LEN ;
 int memcpy (int ,int ,int ) ;
 int mlog (int ,char*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dlm_update_lvb(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
      struct dlm_lock *lock)
{
 struct dlm_lockstatus *lksb = lock->lksb;
 BUG_ON(!lksb);


 spin_lock(&res->spinlock);
 if (res->owner == dlm->node_num) {

  if (lksb->flags & DLM_LKSB_GET_LVB) {
   mlog(0, "getting lvb from lockres for %s node\n",
      lock->ml.node == dlm->node_num ? "master" :
      "remote");
   memcpy(lksb->lvb, res->lvb, DLM_LVB_LEN);
  }







 }
 spin_unlock(&res->spinlock);


 lksb->flags &= ~(DLM_LKSB_PUT_LVB|DLM_LKSB_GET_LVB);
}
