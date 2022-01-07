
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int s_num_meta_stolen; int osb_lock; int s_meta_steal_slot; } ;


 int OCFS2_INVALID_SLOT ;
 int atomic_set (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_init_meta_steal_slot(struct ocfs2_super *osb)
{
 spin_lock(&osb->osb_lock);
 osb->s_meta_steal_slot = OCFS2_INVALID_SLOT;
 spin_unlock(&osb->osb_lock);
 atomic_set(&osb->s_num_meta_stolen, 0);
}
