
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int i_refcount_loc; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int ip_dyn_features; } ;


 scalar_t__ EOPNOTSUPP ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog_errno (scalar_t__) ;
 scalar_t__ ocfs2_convert_inline_data_to_extents (struct inode*,struct buffer_head*) ;
 scalar_t__ ocfs2_create_refcount_tree (struct inode*,struct buffer_head*) ;
 scalar_t__ ocfs2_dealloc_has_cluster (struct ocfs2_cached_dealloc_ctxt*) ;
 scalar_t__ ocfs2_duplicate_inline_data (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*) ;
 int ocfs2_init_dealloc_ctxt (struct ocfs2_cached_dealloc_ctxt*) ;
 scalar_t__ ocfs2_is_refcount_inode (struct inode*) ;
 scalar_t__ ocfs2_reflink_remap_extent (struct inode*,struct buffer_head*,scalar_t__,struct inode*,struct buffer_head*,scalar_t__,scalar_t__,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_run_deallocs (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_schedule_truncate_log_flush (struct ocfs2_super*,int) ;
 scalar_t__ ocfs2_set_refcount_tree (struct inode*,struct buffer_head*,scalar_t__) ;

loff_t ocfs2_reflink_remap_blocks(struct inode *s_inode,
      struct buffer_head *s_bh,
      loff_t pos_in,
      struct inode *t_inode,
      struct buffer_head *t_bh,
      loff_t pos_out,
      loff_t len)
{
 struct ocfs2_cached_dealloc_ctxt dealloc;
 struct ocfs2_super *osb;
 struct ocfs2_dinode *dis;
 struct ocfs2_dinode *dit;
 loff_t ret;

 osb = OCFS2_SB(s_inode->i_sb);
 dis = (struct ocfs2_dinode *)s_bh->b_data;
 dit = (struct ocfs2_dinode *)t_bh->b_data;
 ocfs2_init_dealloc_ctxt(&dealloc);





 if (pos_in == pos_out && pos_in == 0 && len == i_size_read(s_inode) &&
     i_size_read(t_inode) <= len &&
     (OCFS2_I(s_inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)) {
  ret = ocfs2_duplicate_inline_data(s_inode, s_bh, t_inode, t_bh);
  if (ret)
   mlog_errno(ret);
  goto out;
 }






 ret = -EOPNOTSUPP;
 if (ocfs2_is_refcount_inode(s_inode) &&
     ocfs2_is_refcount_inode(t_inode) &&
     le64_to_cpu(dis->i_refcount_loc) !=
     le64_to_cpu(dit->i_refcount_loc))
  goto out;


 if (!ocfs2_is_refcount_inode(s_inode) &&
     !ocfs2_is_refcount_inode(t_inode)) {
  ret = ocfs2_create_refcount_tree(s_inode, s_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }


 if (!ocfs2_is_refcount_inode(s_inode)) {
  ret = ocfs2_set_refcount_tree(s_inode, s_bh,
           le64_to_cpu(dit->i_refcount_loc));
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }
 if (!ocfs2_is_refcount_inode(t_inode)) {
  ret = ocfs2_set_refcount_tree(t_inode, t_bh,
           le64_to_cpu(dis->i_refcount_loc));
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }


 if (OCFS2_I(t_inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
  ret = ocfs2_convert_inline_data_to_extents(t_inode, t_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }


 ret = ocfs2_reflink_remap_extent(s_inode, s_bh, pos_in, t_inode, t_bh,
      pos_out, len, &dealloc);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

out:
 if (ocfs2_dealloc_has_cluster(&dealloc)) {
  ocfs2_schedule_truncate_log_flush(osb, 1);
  ocfs2_run_deallocs(osb, &dealloc);
 }

 return ret;
}
