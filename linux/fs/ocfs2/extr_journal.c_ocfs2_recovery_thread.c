
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int recovery_event; int recovery_lock; int * recovery_thread_task; int uuid_str; scalar_t__ disable_recovery; int node_num; } ;


 scalar_t__ IS_ERR (int *) ;
 scalar_t__ PTR_ERR (int *) ;
 int __ocfs2_recovery_thread ;
 int * kthread_run (int ,struct ocfs2_super*,char*,int ) ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_recovery_map_set (struct ocfs2_super*,int) ;
 int trace_ocfs2_recovery_thread (int,int ,scalar_t__,int *,int) ;
 int wake_up (int *) ;

void ocfs2_recovery_thread(struct ocfs2_super *osb, int node_num)
{
 mutex_lock(&osb->recovery_lock);

 trace_ocfs2_recovery_thread(node_num, osb->node_num,
  osb->disable_recovery, osb->recovery_thread_task,
  osb->disable_recovery ?
  -1 : ocfs2_recovery_map_set(osb, node_num));

 if (osb->disable_recovery)
  goto out;

 if (osb->recovery_thread_task)
  goto out;

 osb->recovery_thread_task = kthread_run(__ocfs2_recovery_thread, osb,
   "ocfs2rec-%s", osb->uuid_str);
 if (IS_ERR(osb->recovery_thread_task)) {
  mlog_errno((int)PTR_ERR(osb->recovery_thread_task));
  osb->recovery_thread_task = ((void*)0);
 }

out:
 mutex_unlock(&osb->recovery_lock);
 wake_up(&osb->recovery_event);
}
