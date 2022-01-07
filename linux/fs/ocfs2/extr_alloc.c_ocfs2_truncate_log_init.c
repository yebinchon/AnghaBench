
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct inode* osb_tl_inode; struct buffer_head* osb_tl_bh; int osb_tl_disable; int osb_truncate_log_wq; int slot_num; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int mlog_errno (int) ;
 int ocfs2_get_truncate_log_info (struct ocfs2_super*,int ,struct inode**,struct buffer_head**) ;
 int ocfs2_truncate_log_worker ;

int ocfs2_truncate_log_init(struct ocfs2_super *osb)
{
 int status;
 struct inode *tl_inode = ((void*)0);
 struct buffer_head *tl_bh = ((void*)0);

 status = ocfs2_get_truncate_log_info(osb,
          osb->slot_num,
          &tl_inode,
          &tl_bh);
 if (status < 0)
  mlog_errno(status);




 INIT_DELAYED_WORK(&osb->osb_truncate_log_wq,
     ocfs2_truncate_log_worker);
 atomic_set(&osb->osb_tl_disable, 0);
 osb->osb_tl_bh = tl_bh;
 osb->osb_tl_inode = tl_inode;

 return status;
}
