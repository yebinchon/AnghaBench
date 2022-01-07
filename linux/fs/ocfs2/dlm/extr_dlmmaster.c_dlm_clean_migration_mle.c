
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int wq; int spinlock; int woken; } ;
struct dlm_ctxt {int dummy; } ;


 int __dlm_mle_detach_hb_events (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int __dlm_unlink_mle (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int atomic_set (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void dlm_clean_migration_mle(struct dlm_ctxt *dlm,
        struct dlm_master_list_entry *mle)
{
 __dlm_mle_detach_hb_events(dlm, mle);

 spin_lock(&mle->spinlock);
 __dlm_unlink_mle(dlm, mle);
 atomic_set(&mle->woken, 1);
 spin_unlock(&mle->spinlock);

 wake_up(&mle->wq);
}
