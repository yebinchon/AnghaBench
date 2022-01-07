
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int hb_events; } ;
struct dlm_ctxt {int mle_hb_events; int spinlock; } ;


 int assert_spin_locked (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void __dlm_mle_attach_hb_events(struct dlm_ctxt *dlm,
           struct dlm_master_list_entry *mle)
{
 assert_spin_locked(&dlm->spinlock);

 list_add_tail(&mle->hb_events, &dlm->mle_hb_events);
}
