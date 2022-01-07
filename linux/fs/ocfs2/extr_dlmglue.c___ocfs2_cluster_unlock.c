
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct TYPE_2__ {int * key; } ;
struct ocfs2_lock_res {TYPE_1__ l_lockdep_map; int l_lock; } ;


 int ocfs2_dec_holders (struct ocfs2_lock_res*,int) ;
 int ocfs2_downconvert_on_unlock (struct ocfs2_super*,struct ocfs2_lock_res*) ;
 int rwsem_release (TYPE_1__*,int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __ocfs2_cluster_unlock(struct ocfs2_super *osb,
       struct ocfs2_lock_res *lockres,
       int level,
       unsigned long caller_ip)
{
 unsigned long flags;

 spin_lock_irqsave(&lockres->l_lock, flags);
 ocfs2_dec_holders(lockres, level);
 ocfs2_downconvert_on_unlock(osb, lockres);
 spin_unlock_irqrestore(&lockres->l_lock, flags);




}
