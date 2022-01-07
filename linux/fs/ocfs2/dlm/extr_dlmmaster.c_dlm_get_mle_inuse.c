
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int mle_refs; int inuse; struct dlm_ctxt* dlm; } ;
struct dlm_ctxt {int master_lock; int spinlock; } ;


 int assert_spin_locked (int *) ;
 int kref_get (int *) ;

__attribute__((used)) static void dlm_get_mle_inuse(struct dlm_master_list_entry *mle)
{
 struct dlm_ctxt *dlm;
 dlm = mle->dlm;

 assert_spin_locked(&dlm->spinlock);
 assert_spin_locked(&dlm->master_lock);
 mle->inuse++;
 kref_get(&mle->mle_refs);
}
