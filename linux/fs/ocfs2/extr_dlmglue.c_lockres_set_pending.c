
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_flags; unsigned int l_pending_gen; int l_lock; } ;


 int BUG_ON (int) ;
 int OCFS2_LOCK_BUSY ;
 int OCFS2_LOCK_PENDING ;
 int assert_spin_locked (int *) ;
 int lockres_or_flags (struct ocfs2_lock_res*,int ) ;

__attribute__((used)) static unsigned int lockres_set_pending(struct ocfs2_lock_res *lockres)
{
 assert_spin_locked(&lockres->l_lock);
 BUG_ON(!(lockres->l_flags & OCFS2_LOCK_BUSY));

 lockres_or_flags(lockres, OCFS2_LOCK_PENDING);

 return lockres->l_pending_gen;
}
