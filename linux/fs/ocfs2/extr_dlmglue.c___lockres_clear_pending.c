
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_flags; unsigned int l_pending_gen; int l_lock; } ;


 int OCFS2_LOCK_BLOCKED ;
 int OCFS2_LOCK_PENDING ;
 int assert_spin_locked (int *) ;
 int lockres_clear_flags (struct ocfs2_lock_res*,int) ;
 int ocfs2_wake_downconvert_thread (struct ocfs2_super*) ;

__attribute__((used)) static void __lockres_clear_pending(struct ocfs2_lock_res *lockres,
        unsigned int generation,
        struct ocfs2_super *osb)
{
 assert_spin_locked(&lockres->l_lock);





 if (!(lockres->l_flags & OCFS2_LOCK_PENDING) ||
     (lockres->l_pending_gen != generation))
  return;

 lockres_clear_flags(lockres, OCFS2_LOCK_PENDING);
 lockres->l_pending_gen++;





 if (lockres->l_flags & OCFS2_LOCK_BLOCKED)
  ocfs2_wake_downconvert_thread(osb);
}
