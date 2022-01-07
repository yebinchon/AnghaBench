
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int l_event; int l_lock; int l_type; int l_level; int l_name; } ;
struct ocfs2_dlm_lksb {int dummy; } ;


 int BUG_ON (int) ;
 int DLM_LOCK_NL ;
 int ML_BASTS ;
 int OCFS2_LOCK_NOCACHE ;
 int mlog (int ,char*,int ,int,int ,int ) ;
 int ocfs2_generic_handle_bast (struct ocfs2_lock_res*,int) ;
 struct ocfs2_super* ocfs2_get_lockres_osb (struct ocfs2_lock_res*) ;
 struct ocfs2_lock_res* ocfs2_lksb_to_lock_res (struct ocfs2_dlm_lksb*) ;
 int ocfs2_lock_type_string (int ) ;
 int ocfs2_schedule_blocked_lock (struct ocfs2_super*,struct ocfs2_lock_res*) ;
 int ocfs2_wake_downconvert_thread (struct ocfs2_super*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void ocfs2_blocking_ast(struct ocfs2_dlm_lksb *lksb, int level)
{
 struct ocfs2_lock_res *lockres = ocfs2_lksb_to_lock_res(lksb);
 struct ocfs2_super *osb = ocfs2_get_lockres_osb(lockres);
 int needs_downconvert;
 unsigned long flags;

 BUG_ON(level <= DLM_LOCK_NL);

 mlog(ML_BASTS, "BAST fired for lockres %s, blocking %d, level %d, "
      "type %s\n", lockres->l_name, level, lockres->l_level,
      ocfs2_lock_type_string(lockres->l_type));





 if (lockres->l_flags & OCFS2_LOCK_NOCACHE)
  return;

 spin_lock_irqsave(&lockres->l_lock, flags);
 needs_downconvert = ocfs2_generic_handle_bast(lockres, level);
 if (needs_downconvert)
  ocfs2_schedule_blocked_lock(osb, lockres);
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 wake_up(&lockres->l_event);

 ocfs2_wake_downconvert_thread(osb);
}
