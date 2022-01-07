
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int inuse; struct dlm_ctxt* dlm; } ;
struct dlm_ctxt {int spinlock; int master_lock; } ;


 int __dlm_put_mle (struct dlm_master_list_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dlm_put_mle_inuse(struct dlm_master_list_entry *mle)
{
 struct dlm_ctxt *dlm;
 dlm = mle->dlm;

 spin_lock(&dlm->spinlock);
 spin_lock(&dlm->master_lock);
 mle->inuse--;
 __dlm_put_mle(mle);
 spin_unlock(&dlm->master_lock);
 spin_unlock(&dlm->spinlock);

}
