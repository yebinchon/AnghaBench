
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int l_lock; } ;


 int BUG_ON (int) ;
 int DLM_LKF_LOCAL ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int OCFS2_LOCK_ATTACHED ;
 int OCFS2_LOCK_LOCAL ;
 int lockres_or_flags (struct ocfs2_lock_res*,int ) ;
 int ocfs2_lock_create (struct ocfs2_super*,struct ocfs2_lock_res*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ocfs2_create_new_lock(struct ocfs2_super *osb,
     struct ocfs2_lock_res *lockres,
     int ex,
     int local)
{
 int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
 unsigned long flags;
 u32 lkm_flags = local ? DLM_LKF_LOCAL : 0;

 spin_lock_irqsave(&lockres->l_lock, flags);
 BUG_ON(lockres->l_flags & OCFS2_LOCK_ATTACHED);
 lockres_or_flags(lockres, OCFS2_LOCK_LOCAL);
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 return ocfs2_lock_create(osb, lockres, level, lkm_flags);
}
