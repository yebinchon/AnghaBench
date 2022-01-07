
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_dinode {int i_xattr_loc; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_XATTR_FL ;
 int brelse (struct buffer_head*) ;
 int le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_read_xattr_block (struct inode*,int ,struct buffer_head**) ;
 int ocfs2_xattr_block_attach_refcount (struct inode*,struct buffer_head*,struct ocfs2_caching_info*,struct buffer_head*,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_xattr_inline_attach_refcount (struct inode*,struct buffer_head*,struct ocfs2_caching_info*,struct buffer_head*,struct ocfs2_cached_dealloc_ctxt*) ;

int ocfs2_xattr_attach_refcount_tree(struct inode *inode,
         struct buffer_head *fe_bh,
         struct ocfs2_caching_info *ref_ci,
         struct buffer_head *ref_root_bh,
         struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 int ret = 0;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)fe_bh->b_data;
 struct buffer_head *blk_bh = ((void*)0);

 if (oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL) {
  ret = ocfs2_xattr_inline_attach_refcount(inode, fe_bh,
        ref_ci, ref_root_bh,
        dealloc);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 if (!di->i_xattr_loc)
  goto out;

 ret = ocfs2_read_xattr_block(inode, le64_to_cpu(di->i_xattr_loc),
         &blk_bh);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_xattr_block_attach_refcount(inode, blk_bh, ref_ci,
      ref_root_bh, dealloc);
 if (ret)
  mlog_errno(ret);

 brelse(blk_bh);
out:

 return ret;
}
