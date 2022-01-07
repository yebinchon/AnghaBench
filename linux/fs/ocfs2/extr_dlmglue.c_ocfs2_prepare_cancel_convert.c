
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {scalar_t__ l_unlock_action; scalar_t__ l_action; int l_flags; int l_name; int l_lock; } ;


 int BUG_ON (int) ;
 int ML_BASTS ;
 scalar_t__ OCFS2_AST_CONVERT ;
 scalar_t__ OCFS2_AST_DOWNCONVERT ;
 int OCFS2_LOCK_BUSY ;
 scalar_t__ OCFS2_UNLOCK_CANCEL_CONVERT ;
 int assert_spin_locked (int *) ;
 int mlog (int ,char*,int ) ;
 int mlog_bug_on_msg (int,char*,int ,int) ;

__attribute__((used)) static int ocfs2_prepare_cancel_convert(struct ocfs2_super *osb,
            struct ocfs2_lock_res *lockres)
{
 assert_spin_locked(&lockres->l_lock);

 if (lockres->l_unlock_action == OCFS2_UNLOCK_CANCEL_CONVERT) {



  mlog(ML_BASTS, "lockres %s, skip convert\n", lockres->l_name);
  return 0;
 }


 BUG_ON(lockres->l_action != OCFS2_AST_CONVERT &&
        lockres->l_action != OCFS2_AST_DOWNCONVERT);


 lockres->l_unlock_action = OCFS2_UNLOCK_CANCEL_CONVERT;

 mlog_bug_on_msg(!(lockres->l_flags & OCFS2_LOCK_BUSY),
   "lock %s, invalid flags: 0x%lx\n",
   lockres->l_name, lockres->l_flags);

 mlog(ML_BASTS, "lockres %s\n", lockres->l_name);

 return 1;
}
