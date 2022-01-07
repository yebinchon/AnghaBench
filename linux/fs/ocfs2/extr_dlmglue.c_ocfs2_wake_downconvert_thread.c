
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dc_event; int dc_task_lock; int dc_wake_sequence; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void ocfs2_wake_downconvert_thread(struct ocfs2_super *osb)
{
 unsigned long flags;

 spin_lock_irqsave(&osb->dc_task_lock, flags);


 osb->dc_wake_sequence++;
 spin_unlock_irqrestore(&osb->dc_task_lock, flags);
 wake_up(&osb->dc_event);
}
