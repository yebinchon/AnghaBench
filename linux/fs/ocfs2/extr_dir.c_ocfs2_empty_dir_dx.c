
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_empty_dir_priv {int dx_dir; int seen_other; } ;
struct ocfs2_dx_root_block {int dr_num_entries; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int brelse (struct buffer_head*) ;
 int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_read_dx_root (struct inode*,struct ocfs2_dinode*,struct buffer_head**) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_empty_dir_dx(struct inode *inode,
         struct ocfs2_empty_dir_priv *priv)
{
 int ret;
 struct buffer_head *di_bh = ((void*)0);
 struct buffer_head *dx_root_bh = ((void*)0);
 struct ocfs2_dinode *di;
 struct ocfs2_dx_root_block *dx_root;

 priv->dx_dir = 1;

 ret = ocfs2_read_inode_block(inode, &di_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 di = (struct ocfs2_dinode *)di_bh->b_data;

 ret = ocfs2_read_dx_root(inode, di, &dx_root_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;

 if (le32_to_cpu(dx_root->dr_num_entries) != 2)
  priv->seen_other = 1;

out:
 brelse(di_bh);
 brelse(dx_root_bh);
 return ret;
}
