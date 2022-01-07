
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int mnamehash; int mnamelen; int mname; } ;
struct dlm_lock_resource {int spinlock; } ;
struct dlm_ctxt {int master_lock; } ;


 int DLM_LOCK_RES_OWNER_UNKNOWN ;
 struct dlm_lock_resource* __dlm_lookup_lockres (struct dlm_ctxt*,int ,int ,int ) ;
 int __dlm_mle_detach_hb_events (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int __dlm_put_mle (struct dlm_master_list_entry*) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int dlm_move_lockres_to_recovery_list (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_set_lockres_owner (struct dlm_ctxt*,struct dlm_lock_resource*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct dlm_lock_resource *dlm_reset_mleres_owner(struct dlm_ctxt *dlm,
     struct dlm_master_list_entry *mle)
{
 struct dlm_lock_resource *res;


 res = __dlm_lookup_lockres(dlm, mle->mname, mle->mnamelen,
       mle->mnamehash);
 if (res) {
  spin_unlock(&dlm->master_lock);


  spin_lock(&res->spinlock);
  dlm_set_lockres_owner(dlm, res, DLM_LOCK_RES_OWNER_UNKNOWN);
  dlm_move_lockres_to_recovery_list(dlm, res);
  spin_unlock(&res->spinlock);
  dlm_lockres_put(res);


  __dlm_mle_detach_hb_events(dlm, mle);


  spin_lock(&dlm->master_lock);
  __dlm_put_mle(mle);
  spin_unlock(&dlm->master_lock);
 }

 return res;
}
