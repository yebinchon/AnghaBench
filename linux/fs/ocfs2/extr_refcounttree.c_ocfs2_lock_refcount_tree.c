
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {scalar_t__ rf_generation; int rf_removed; int rf_blkno; int rf_ci; } ;
struct ocfs2_refcount_block {int rf_generation; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int __ocfs2_lock_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_erase_refcount_tree_from_list (struct ocfs2_super*,struct ocfs2_refcount_tree*) ;
 int ocfs2_get_refcount_tree (struct ocfs2_super*,int ,struct ocfs2_refcount_tree**) ;
 int ocfs2_read_refcount_block (int *,int ,struct buffer_head**) ;
 int ocfs2_refcount_tree_get (struct ocfs2_refcount_tree*) ;
 int ocfs2_refcount_tree_put (struct ocfs2_refcount_tree*) ;
 int ocfs2_unlock_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ;

int ocfs2_lock_refcount_tree(struct ocfs2_super *osb,
        u64 ref_blkno, int rw,
        struct ocfs2_refcount_tree **ret_tree,
        struct buffer_head **ref_bh)
{
 int ret, delete_tree = 0;
 struct ocfs2_refcount_tree *tree = ((void*)0);
 struct buffer_head *ref_root_bh = ((void*)0);
 struct ocfs2_refcount_block *rb;

again:
 ret = ocfs2_get_refcount_tree(osb, ref_blkno, &tree);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 ocfs2_refcount_tree_get(tree);

 ret = __ocfs2_lock_refcount_tree(osb, tree, rw);
 if (ret) {
  mlog_errno(ret);
  ocfs2_refcount_tree_put(tree);
  goto out;
 }

 ret = ocfs2_read_refcount_block(&tree->rf_ci, tree->rf_blkno,
     &ref_root_bh);
 if (ret) {
  mlog_errno(ret);
  ocfs2_unlock_refcount_tree(osb, tree, rw);
  goto out;
 }

 rb = (struct ocfs2_refcount_block *)ref_root_bh->b_data;
 if (tree->rf_generation != le32_to_cpu(rb->rf_generation)) {
  if (!tree->rf_removed) {
   ocfs2_erase_refcount_tree_from_list(osb, tree);
   tree->rf_removed = 1;
   delete_tree = 1;
  }

  ocfs2_unlock_refcount_tree(osb, tree, rw);




  if (delete_tree)
   ocfs2_refcount_tree_put(tree);
  brelse(ref_root_bh);
  ref_root_bh = ((void*)0);
  goto again;
 }

 *ret_tree = tree;
 if (ref_bh) {
  *ref_bh = ref_root_bh;
  ref_root_bh = ((void*)0);
 }
out:
 brelse(ref_root_bh);
 return ret;
}
