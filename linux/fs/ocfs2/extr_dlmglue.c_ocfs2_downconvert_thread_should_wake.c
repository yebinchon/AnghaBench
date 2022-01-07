
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {scalar_t__ dc_work_sequence; scalar_t__ dc_wake_sequence; int dc_task_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ocfs2_downconvert_thread_should_wake(struct ocfs2_super *osb)
{
 int should_wake = 0;
 unsigned long flags;

 spin_lock_irqsave(&osb->dc_task_lock, flags);
 if (osb->dc_work_sequence != osb->dc_wake_sequence)
  should_wake = 1;
 spin_unlock_irqrestore(&osb->dc_task_lock, flags);

 return should_wake;
}
