
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dc_task_lock; int blocked_lock_list; } ;


 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ocfs2_downconvert_thread_lists_empty(struct ocfs2_super *osb)
{
 int empty = 0;
 unsigned long flags;

 spin_lock_irqsave(&osb->dc_task_lock, flags);
 if (list_empty(&osb->blocked_lock_list))
  empty = 1;

 spin_unlock_irqrestore(&osb->dc_task_lock, flags);
 return empty;
}
