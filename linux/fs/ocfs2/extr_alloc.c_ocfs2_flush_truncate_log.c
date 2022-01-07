
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct inode* osb_tl_inode; } ;
struct inode {int dummy; } ;


 int __ocfs2_flush_truncate_log (struct ocfs2_super*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

int ocfs2_flush_truncate_log(struct ocfs2_super *osb)
{
 int status;
 struct inode *tl_inode = osb->osb_tl_inode;

 inode_lock(tl_inode);
 status = __ocfs2_flush_truncate_log(osb);
 inode_unlock(tl_inode);

 return status;
}
