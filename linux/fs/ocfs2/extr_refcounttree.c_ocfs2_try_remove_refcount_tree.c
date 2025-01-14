
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {int ip_dyn_features; int ip_xattr_sem; int ip_alloc_sem; scalar_t__ ip_clusters; } ;
struct ocfs2_dinode {scalar_t__ i_xattr_loc; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int OCFS2_HAS_XATTR_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_XATTR_FL ;
 int down_write (int *) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_has_inline_xattr_value_outside (struct inode*,struct ocfs2_dinode*) ;
 int ocfs2_remove_refcount_tree (struct inode*,struct buffer_head*) ;
 int up_write (int *) ;

int ocfs2_try_remove_refcount_tree(struct inode *inode,
       struct buffer_head *di_bh)
{
 int ret;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;

 down_write(&oi->ip_xattr_sem);
 down_write(&oi->ip_alloc_sem);

 if (oi->ip_clusters)
  goto out;

 if ((oi->ip_dyn_features & OCFS2_HAS_XATTR_FL) && di->i_xattr_loc)
  goto out;

 if (oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL &&
     ocfs2_has_inline_xattr_value_outside(inode, di))
  goto out;

 ret = ocfs2_remove_refcount_tree(inode, di_bh);
 if (ret)
  mlog_errno(ret);
out:
 up_write(&oi->ip_alloc_sem);
 up_write(&oi->ip_xattr_sem);
 return 0;
}
