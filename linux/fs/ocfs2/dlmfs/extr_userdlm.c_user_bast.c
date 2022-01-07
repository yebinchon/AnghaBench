
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_blocking; int l_event; int l_lock; int l_flags; int l_level; int l_name; int l_namelen; } ;
struct ocfs2_dlm_lksb {int dummy; } ;


 int ML_BASTS ;
 int USER_LOCK_BLOCKED ;
 int __user_dlm_queue_lockres (struct user_lock_res*) ;
 int mlog (int ,char*,int ,int ,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct user_lock_res* user_lksb_to_lock_res (struct ocfs2_dlm_lksb*) ;
 int wake_up (int *) ;

__attribute__((used)) static void user_bast(struct ocfs2_dlm_lksb *lksb, int level)
{
 struct user_lock_res *lockres = user_lksb_to_lock_res(lksb);

 mlog(ML_BASTS, "BAST fired for lockres %.*s, blocking %d, level %d\n",
      lockres->l_namelen, lockres->l_name, level, lockres->l_level);

 spin_lock(&lockres->l_lock);
 lockres->l_flags |= USER_LOCK_BLOCKED;
 if (level > lockres->l_blocking)
  lockres->l_blocking = level;

 __user_dlm_queue_lockres(lockres);
 spin_unlock(&lockres->l_lock);

 wake_up(&lockres->l_event);
}
