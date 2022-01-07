
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_super {int sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct TYPE_3__ {int i_list; } ;
struct ocfs2_dinode {int i_size; int i_clusters; TYPE_1__ id2; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef enum ocfs2_alloc_restarted { ____Placeholder_ocfs2_alloc_restarted } ocfs2_alloc_restarted ;
struct TYPE_4__ {scalar_t__ ip_clusters; scalar_t__ ip_blkno; int ip_lock; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int ENOSPC ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int RESTART_META ;
 int RESTART_NONE ;
 int RESTART_TRANS ;
 int brelse (struct buffer_head*) ;
 int dquot_alloc_space_nodirty (struct inode*,int ) ;
 int dquot_free_space (struct inode*,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_add_inode_data (struct ocfs2_super*,struct inode*,scalar_t__*,scalar_t__,int,struct buffer_head*,int *,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,int*) ;
 int ocfs2_allocate_extend_trans (int *,int) ;
 int ocfs2_calc_extend_credits (int ,int *) ;
 int ocfs2_clusters_to_bytes (int ,scalar_t__) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_init_dinode_extent_tree (struct ocfs2_extent_tree*,int ,struct buffer_head*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_lock_allocators (struct inode*,struct ocfs2_extent_tree*,scalar_t__,int ,struct ocfs2_alloc_context**,struct ocfs2_alloc_context**) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;
 int ocfs2_sparse_alloc (struct ocfs2_super*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_extend_allocation (unsigned long long,unsigned long long,scalar_t__,scalar_t__,int,int) ;
 int trace_ocfs2_extend_allocation_end (scalar_t__,scalar_t__,unsigned long long,scalar_t__,unsigned long long) ;

__attribute__((used)) static int ocfs2_extend_allocation(struct inode *inode, u32 logical_start,
       u32 clusters_to_add, int mark_unwritten)
{
 int status = 0;
 int restart_func = 0;
 int credits;
 u32 prev_clusters;
 struct buffer_head *bh = ((void*)0);
 struct ocfs2_dinode *fe = ((void*)0);
 handle_t *handle = ((void*)0);
 struct ocfs2_alloc_context *data_ac = ((void*)0);
 struct ocfs2_alloc_context *meta_ac = ((void*)0);
 enum ocfs2_alloc_restarted why = RESTART_NONE;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_extent_tree et;
 int did_quota = 0;





 BUG_ON(mark_unwritten && !ocfs2_sparse_alloc(osb));

 status = ocfs2_read_inode_block(inode, &bh);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }
 fe = (struct ocfs2_dinode *) bh->b_data;

restart_all:
 BUG_ON(le32_to_cpu(fe->i_clusters) != OCFS2_I(inode)->ip_clusters);

 ocfs2_init_dinode_extent_tree(&et, INODE_CACHE(inode), bh);
 status = ocfs2_lock_allocators(inode, &et, clusters_to_add, 0,
           &data_ac, &meta_ac);
 if (status) {
  mlog_errno(status);
  goto leave;
 }

 credits = ocfs2_calc_extend_credits(osb->sb, &fe->id2.i_list);
 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  handle = ((void*)0);
  mlog_errno(status);
  goto leave;
 }

restarted_transaction:
 trace_ocfs2_extend_allocation(
  (unsigned long long)OCFS2_I(inode)->ip_blkno,
  (unsigned long long)i_size_read(inode),
  le32_to_cpu(fe->i_clusters), clusters_to_add,
  why, restart_func);

 status = dquot_alloc_space_nodirty(inode,
   ocfs2_clusters_to_bytes(osb->sb, clusters_to_add));
 if (status)
  goto leave;
 did_quota = 1;




 status = ocfs2_journal_access_di(handle, INODE_CACHE(inode), bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 prev_clusters = OCFS2_I(inode)->ip_clusters;

 status = ocfs2_add_inode_data(osb,
          inode,
          &logical_start,
          clusters_to_add,
          mark_unwritten,
          bh,
          handle,
          data_ac,
          meta_ac,
          &why);
 if ((status < 0) && (status != -EAGAIN)) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto leave;
 }
 ocfs2_update_inode_fsync_trans(handle, inode, 1);
 ocfs2_journal_dirty(handle, bh);

 spin_lock(&OCFS2_I(inode)->ip_lock);
 clusters_to_add -= (OCFS2_I(inode)->ip_clusters - prev_clusters);
 spin_unlock(&OCFS2_I(inode)->ip_lock);

 dquot_free_space(inode,
   ocfs2_clusters_to_bytes(osb->sb, clusters_to_add));
 did_quota = 0;

 if (why != RESTART_NONE && clusters_to_add) {
  if (why == RESTART_META) {
   restart_func = 1;
   status = 0;
  } else {
   BUG_ON(why != RESTART_TRANS);

   status = ocfs2_allocate_extend_trans(handle, 1);
   if (status < 0) {


    status = -ENOMEM;
    mlog_errno(status);
    goto leave;
   }
   goto restarted_transaction;
  }
 }

 trace_ocfs2_extend_allocation_end(OCFS2_I(inode)->ip_blkno,
      le32_to_cpu(fe->i_clusters),
      (unsigned long long)le64_to_cpu(fe->i_size),
      OCFS2_I(inode)->ip_clusters,
      (unsigned long long)i_size_read(inode));

leave:
 if (status < 0 && did_quota)
  dquot_free_space(inode,
   ocfs2_clusters_to_bytes(osb->sb, clusters_to_add));
 if (handle) {
  ocfs2_commit_trans(osb, handle);
  handle = ((void*)0);
 }
 if (data_ac) {
  ocfs2_free_alloc_context(data_ac);
  data_ac = ((void*)0);
 }
 if (meta_ac) {
  ocfs2_free_alloc_context(meta_ac);
  meta_ac = ((void*)0);
 }
 if ((!status) && restart_func) {
  restart_func = 0;
  goto restart_all;
 }
 brelse(bh);
 bh = ((void*)0);

 return status;
}
