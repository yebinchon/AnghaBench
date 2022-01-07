
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int brelse (struct buffer_head*) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_rw_unlock (struct inode*,int) ;
 int unlock_two_nondirectories (struct inode*,struct inode*) ;

void ocfs2_reflink_inodes_unlock(struct inode *s_inode,
     struct buffer_head *s_bh,
     struct inode *t_inode,
     struct buffer_head *t_bh)
{
 ocfs2_inode_unlock(s_inode, 1);
 ocfs2_rw_unlock(s_inode, 1);
 brelse(s_bh);
 if (s_inode != t_inode) {
  ocfs2_inode_unlock(t_inode, 1);
  ocfs2_rw_unlock(t_inode, 1);
  brelse(t_bh);
 }
 unlock_two_nondirectories(s_inode, t_inode);
}
