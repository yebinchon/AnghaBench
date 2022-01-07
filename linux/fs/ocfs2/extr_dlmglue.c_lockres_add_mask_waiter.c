
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mask_waiter {unsigned long mw_mask; unsigned long mw_goal; int mw_item; } ;
struct ocfs2_lock_res {int l_mask_waiters; int l_lock; } ;


 int BUG_ON (int) ;
 int assert_spin_locked (int *) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int ocfs2_track_lock_wait (struct ocfs2_lock_res*) ;

__attribute__((used)) static void lockres_add_mask_waiter(struct ocfs2_lock_res *lockres,
        struct ocfs2_mask_waiter *mw,
        unsigned long mask,
        unsigned long goal)
{
 BUG_ON(!list_empty(&mw->mw_item));

 assert_spin_locked(&lockres->l_lock);

 list_add_tail(&mw->mw_item, &lockres->l_mask_waiters);
 mw->mw_mask = mask;
 mw->mw_goal = goal;
 ocfs2_track_lock_wait(lockres);
}
