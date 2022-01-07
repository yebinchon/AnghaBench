
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_flags; int l_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int ocfs2_check_wait_flag(struct ocfs2_lock_res *lockres,
     int flag)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&lockres->l_lock, flags);
 ret = lockres->l_flags & flag;
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 return ret;
}
