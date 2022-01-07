
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int l_lock; } ;


 int __lockres_remove_mask_waiter (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lockres_remove_mask_waiter(struct ocfs2_lock_res *lockres,
          struct ocfs2_mask_waiter *mw)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&lockres->l_lock, flags);
 ret = __lockres_remove_mask_waiter(lockres, mw);
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 return ret;

}
