
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_truncate_log_wq; int ocfs2_wq; int osb_tl_disable; scalar_t__ osb_tl_inode; } ;


 int OCFS2_TRUNCATE_LOG_FLUSH_INTERVAL ;
 scalar_t__ atomic_read (int *) ;
 int cancel_delayed_work (int *) ;
 int queue_delayed_work (int ,int *,int ) ;

void ocfs2_schedule_truncate_log_flush(struct ocfs2_super *osb,
           int cancel)
{
 if (osb->osb_tl_inode &&
   atomic_read(&osb->osb_tl_disable) == 0) {


  if (cancel)
   cancel_delayed_work(&osb->osb_truncate_log_wq);

  queue_delayed_work(osb->ocfs2_wq, &osb->osb_truncate_log_wq,
       OCFS2_TRUNCATE_LOG_FLUSH_INTERVAL);
 }
}
