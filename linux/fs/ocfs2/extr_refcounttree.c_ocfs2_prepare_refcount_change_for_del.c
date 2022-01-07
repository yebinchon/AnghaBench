
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ocfs2_refcount_tree {int rf_ci; } ;
struct inode {int i_sb; int i_ino; } ;
struct buffer_head {int dummy; } ;


 int BUG_ON (int) ;
 int OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_blocks_to_clusters (int ,int ) ;
 int ocfs2_calc_refcount_meta_credits (int ,int *,struct buffer_head*,int ,int ,int*,int*) ;
 int ocfs2_error (int ,char*,int ) ;
 int ocfs2_get_refcount_tree (int ,int ,struct ocfs2_refcount_tree**) ;
 int ocfs2_is_refcount_inode (struct inode*) ;
 int ocfs2_read_refcount_block (int *,int ,struct buffer_head**) ;
 int ocfs2_refcount_tree (int ) ;
 int trace_ocfs2_prepare_refcount_change_for_del (int,int) ;

int ocfs2_prepare_refcount_change_for_del(struct inode *inode,
       u64 refcount_loc,
       u64 phys_blkno,
       u32 clusters,
       int *credits,
       int *ref_blocks)
{
 int ret;
 struct buffer_head *ref_root_bh = ((void*)0);
 struct ocfs2_refcount_tree *tree;
 u64 start_cpos = ocfs2_blocks_to_clusters(inode->i_sb, phys_blkno);

 if (!ocfs2_refcount_tree(OCFS2_SB(inode->i_sb))) {
  ret = ocfs2_error(inode->i_sb, "Inode %lu want to use refcount tree, but the feature bit is not set in the super block\n",
      inode->i_ino);
  goto out;
 }

 BUG_ON(!ocfs2_is_refcount_inode(inode));

 ret = ocfs2_get_refcount_tree(OCFS2_SB(inode->i_sb),
          refcount_loc, &tree);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_read_refcount_block(&tree->rf_ci, refcount_loc,
     &ref_root_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_calc_refcount_meta_credits(inode->i_sb,
            &tree->rf_ci,
            ref_root_bh,
            start_cpos, clusters,
            ref_blocks, credits);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 trace_ocfs2_prepare_refcount_change_for_del(*ref_blocks, *credits);

out:
 brelse(ref_root_bh);
 return ret;
}
