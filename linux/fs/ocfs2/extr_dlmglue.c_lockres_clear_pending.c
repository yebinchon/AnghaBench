
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_lock; } ;


 int __lockres_clear_pending (struct ocfs2_lock_res*,unsigned int,struct ocfs2_super*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lockres_clear_pending(struct ocfs2_lock_res *lockres,
      unsigned int generation,
      struct ocfs2_super *osb)
{
 unsigned long flags;

 spin_lock_irqsave(&lockres->l_lock, flags);
 __lockres_clear_pending(lockres, generation, osb);
 spin_unlock_irqrestore(&lockres->l_lock, flags);
}
