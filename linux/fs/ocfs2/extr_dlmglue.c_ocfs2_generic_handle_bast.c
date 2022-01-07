
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_blocking; int l_level; int l_name; int l_lock; } ;


 int ML_BASTS ;
 int OCFS2_LOCK_BLOCKED ;
 int assert_spin_locked (int *) ;
 int lockres_or_flags (struct ocfs2_lock_res*,int ) ;
 int mlog (int ,char*,int,...) ;
 scalar_t__ ocfs2_highest_compat_lock_level (int) ;

__attribute__((used)) static int ocfs2_generic_handle_bast(struct ocfs2_lock_res *lockres,
         int level)
{
 int needs_downconvert = 0;

 assert_spin_locked(&lockres->l_lock);

 if (level > lockres->l_blocking) {




  if (ocfs2_highest_compat_lock_level(level) <
      ocfs2_highest_compat_lock_level(lockres->l_blocking))
   needs_downconvert = 1;

  lockres->l_blocking = level;
 }

 mlog(ML_BASTS, "lockres %s, block %d, level %d, l_block %d, dwn %d\n",
      lockres->l_name, level, lockres->l_level, lockres->l_blocking,
      needs_downconvert);

 if (needs_downconvert)
  lockres_or_flags(lockres, OCFS2_LOCK_BLOCKED);
 mlog(0, "needs_downconvert = %d\n", needs_downconvert);
 return needs_downconvert;
}
