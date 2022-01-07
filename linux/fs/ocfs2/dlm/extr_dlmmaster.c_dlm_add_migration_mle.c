
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct dlm_master_list_entry {scalar_t__ type; int maybe_map; void* master; void* new_master; int spinlock; int wq; int woken; } ;
struct dlm_lock_resource {int dummy; } ;
struct dlm_ctxt {void* node_num; int name; int master_lock; int spinlock; } ;


 int BUG () ;
 int DLM_MIGRATE_RESPONSE_MASTERY_REF ;
 scalar_t__ DLM_MLE_MASTER ;
 scalar_t__ DLM_MLE_MIGRATION ;
 int EEXIST ;
 int ML_ERROR ;
 int __dlm_insert_mle (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int __dlm_mle_detach_hb_events (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int __dlm_unlink_mle (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int assert_spin_locked (int *) ;
 int atomic_set (int *,int) ;
 int dlm_find_mle (struct dlm_ctxt*,struct dlm_master_list_entry**,char*,unsigned int) ;
 int dlm_init_mle (struct dlm_master_list_entry*,scalar_t__,struct dlm_ctxt*,struct dlm_lock_resource*,char const*,unsigned int) ;
 int mlog (int ,char*,unsigned int,...) ;
 int set_bit (void*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int dlm_add_migration_mle(struct dlm_ctxt *dlm,
     struct dlm_lock_resource *res,
     struct dlm_master_list_entry *mle,
     struct dlm_master_list_entry **oldmle,
     const char *name, unsigned int namelen,
     u8 new_master, u8 master)
{
 int found;
 int ret = 0;

 *oldmle = ((void*)0);

 assert_spin_locked(&dlm->spinlock);
 assert_spin_locked(&dlm->master_lock);


 found = dlm_find_mle(dlm, oldmle, (char *)name, namelen);
 if (found) {
  struct dlm_master_list_entry *tmp = *oldmle;
  spin_lock(&tmp->spinlock);
  if (tmp->type == DLM_MLE_MIGRATION) {
   if (master == dlm->node_num) {

    mlog(0, "tried to migrate %.*s, but some "
         "process beat me to it\n",
         namelen, name);
    spin_unlock(&tmp->spinlock);
    return -EEXIST;
   } else {

    mlog(ML_ERROR, "migration error  mle: "
         "master=%u new_master=%u // request: "
         "master=%u new_master=%u // "
         "lockres=%.*s\n",
         tmp->master, tmp->new_master,
         master, new_master,
         namelen, name);
    BUG();
   }
  } else {

   tmp->master = master;
   atomic_set(&tmp->woken, 1);
   wake_up(&tmp->wq);

   __dlm_unlink_mle(dlm, tmp);
   __dlm_mle_detach_hb_events(dlm, tmp);
   if (tmp->type == DLM_MLE_MASTER) {
    ret = DLM_MIGRATE_RESPONSE_MASTERY_REF;
    mlog(0, "%s:%.*s: master=%u, newmaster=%u, "
      "telling master to get ref "
      "for cleared out mle during "
      "migration\n", dlm->name,
      namelen, name, master,
      new_master);
   }
  }
  spin_unlock(&tmp->spinlock);
 }


 dlm_init_mle(mle, DLM_MLE_MIGRATION, dlm, res, name, namelen);
 mle->new_master = new_master;


 mle->master = master;

 set_bit(new_master, mle->maybe_map);
 __dlm_insert_mle(dlm, mle);

 return ret;
}
