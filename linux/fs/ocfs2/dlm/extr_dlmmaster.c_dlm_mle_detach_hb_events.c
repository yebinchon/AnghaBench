
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int dummy; } ;
struct dlm_ctxt {int spinlock; } ;


 int __dlm_mle_detach_hb_events (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void dlm_mle_detach_hb_events(struct dlm_ctxt *dlm,
         struct dlm_master_list_entry *mle)
{
 spin_lock(&dlm->spinlock);
 __dlm_mle_detach_hb_events(dlm, mle);
 spin_unlock(&dlm->spinlock);
}
