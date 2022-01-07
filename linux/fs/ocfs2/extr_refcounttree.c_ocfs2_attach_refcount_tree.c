
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int rf_ci; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_dinode {int i_refcount_loc; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 unsigned int OCFS2_EXT_REFCOUNTED ;
 int OCFS2_HAS_XATTR_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int i_size_read (struct inode*) ;
 int le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_add_refcount_flag (struct inode*,struct ocfs2_extent_tree*,int *,struct buffer_head*,scalar_t__,scalar_t__,scalar_t__,struct ocfs2_cached_dealloc_ctxt*,int *) ;
 int ocfs2_change_ctime (struct inode*,struct buffer_head*) ;
 scalar_t__ ocfs2_clusters_for_bytes (int ,int ) ;
 int ocfs2_create_refcount_tree (struct inode*,struct buffer_head*) ;
 scalar_t__ ocfs2_dealloc_has_cluster (struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_extent_map_trunc (struct inode*,int ) ;
 int ocfs2_get_clusters (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,unsigned int*) ;
 int ocfs2_init_dealloc_ctxt (struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_init_dinode_extent_tree (struct ocfs2_extent_tree*,int ,struct buffer_head*) ;
 int ocfs2_is_refcount_inode (struct inode*) ;
 int ocfs2_lock_refcount_tree (struct ocfs2_super*,int ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ;
 int ocfs2_run_deallocs (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_schedule_truncate_log_flush (struct ocfs2_super*,int) ;
 int ocfs2_unlock_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ;
 int ocfs2_xattr_attach_refcount_tree (struct inode*,struct buffer_head*,int *,struct buffer_head*,struct ocfs2_cached_dealloc_ctxt*) ;

__attribute__((used)) static int ocfs2_attach_refcount_tree(struct inode *inode,
          struct buffer_head *di_bh)
{
 int ret, data_changed = 0;
 struct buffer_head *ref_root_bh = ((void*)0);
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_refcount_tree *ref_tree;
 unsigned int ext_flags;
 loff_t size;
 u32 cpos, num_clusters, clusters, p_cluster;
 struct ocfs2_cached_dealloc_ctxt dealloc;
 struct ocfs2_extent_tree di_et;

 ocfs2_init_dealloc_ctxt(&dealloc);

 if (!ocfs2_is_refcount_inode(inode)) {
  ret = ocfs2_create_refcount_tree(inode, di_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 BUG_ON(!di->i_refcount_loc);
 ret = ocfs2_lock_refcount_tree(osb,
           le64_to_cpu(di->i_refcount_loc), 1,
           &ref_tree, &ref_root_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL)
  goto attach_xattr;

 ocfs2_init_dinode_extent_tree(&di_et, INODE_CACHE(inode), di_bh);

 size = i_size_read(inode);
 clusters = ocfs2_clusters_for_bytes(inode->i_sb, size);

 cpos = 0;
 while (cpos < clusters) {
  ret = ocfs2_get_clusters(inode, cpos, &p_cluster,
      &num_clusters, &ext_flags);
  if (ret) {
   mlog_errno(ret);
   goto unlock;
  }
  if (p_cluster && !(ext_flags & OCFS2_EXT_REFCOUNTED)) {
   ret = ocfs2_add_refcount_flag(inode, &di_et,
            &ref_tree->rf_ci,
            ref_root_bh, cpos,
            p_cluster, num_clusters,
            &dealloc, ((void*)0));
   if (ret) {
    mlog_errno(ret);
    goto unlock;
   }

   data_changed = 1;
  }
  cpos += num_clusters;
 }

attach_xattr:
 if (oi->ip_dyn_features & OCFS2_HAS_XATTR_FL) {
  ret = ocfs2_xattr_attach_refcount_tree(inode, di_bh,
             &ref_tree->rf_ci,
             ref_root_bh,
             &dealloc);
  if (ret) {
   mlog_errno(ret);
   goto unlock;
  }
 }

 if (data_changed) {
  ret = ocfs2_change_ctime(inode, di_bh);
  if (ret)
   mlog_errno(ret);
 }

unlock:
 ocfs2_unlock_refcount_tree(osb, ref_tree, 1);
 brelse(ref_root_bh);

 if (!ret && ocfs2_dealloc_has_cluster(&dealloc)) {
  ocfs2_schedule_truncate_log_flush(osb, 1);
  ocfs2_run_deallocs(osb, &dealloc);
 }
out:




 ocfs2_extent_map_trunc(inode, 0);

 return ret;
}
