
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int osb_lock; struct ocfs2_refcount_tree* osb_ref_tree_lru; } ;
struct ocfs2_refcount_tree {int rf_ci; int rf_generation; int rf_blkno; } ;
struct ocfs2_refcount_block {int rf_generation; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ENOMEM ;
 int brelse (struct buffer_head*) ;
 int kfree (struct ocfs2_refcount_tree*) ;
 int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 struct ocfs2_refcount_tree* ocfs2_allocate_refcount_tree (struct ocfs2_super*,int ) ;
 struct ocfs2_refcount_tree* ocfs2_find_refcount_tree (struct ocfs2_super*,int ) ;
 int ocfs2_free_refcount_tree (struct ocfs2_refcount_tree*) ;
 int ocfs2_init_refcount_tree_lock (struct ocfs2_super*,struct ocfs2_refcount_tree*,int ,int ) ;
 int ocfs2_insert_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*) ;
 int ocfs2_metadata_cache_exit (int *) ;
 int ocfs2_metadata_cache_purge (int *) ;
 int ocfs2_read_refcount_block (int *,int ,struct buffer_head**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_get_refcount_tree(struct ocfs2_super *osb, u64 rf_blkno,
       struct ocfs2_refcount_tree **ret_tree)
{
 int ret = 0;
 struct ocfs2_refcount_tree *tree, *new = ((void*)0);
 struct buffer_head *ref_root_bh = ((void*)0);
 struct ocfs2_refcount_block *ref_rb;

 spin_lock(&osb->osb_lock);
 if (osb->osb_ref_tree_lru &&
     osb->osb_ref_tree_lru->rf_blkno == rf_blkno)
  tree = osb->osb_ref_tree_lru;
 else
  tree = ocfs2_find_refcount_tree(osb, rf_blkno);
 if (tree)
  goto out;

 spin_unlock(&osb->osb_lock);

 new = ocfs2_allocate_refcount_tree(osb, rf_blkno);
 if (!new) {
  ret = -ENOMEM;
  mlog_errno(ret);
  return ret;
 }
 ret = ocfs2_read_refcount_block(&new->rf_ci, rf_blkno, &ref_root_bh);
 if (ret) {
  mlog_errno(ret);
  ocfs2_metadata_cache_exit(&new->rf_ci);
  kfree(new);
  return ret;
 }

 ref_rb = (struct ocfs2_refcount_block *)ref_root_bh->b_data;
 new->rf_generation = le32_to_cpu(ref_rb->rf_generation);
 ocfs2_init_refcount_tree_lock(osb, new, rf_blkno,
          new->rf_generation);
 ocfs2_metadata_cache_purge(&new->rf_ci);

 spin_lock(&osb->osb_lock);
 tree = ocfs2_find_refcount_tree(osb, rf_blkno);
 if (tree)
  goto out;

 ocfs2_insert_refcount_tree(osb, new);

 tree = new;
 new = ((void*)0);

out:
 *ret_tree = tree;

 osb->osb_ref_tree_lru = tree;

 spin_unlock(&osb->osb_lock);

 if (new)
  ocfs2_free_refcount_tree(new);

 brelse(ref_root_bh);
 return ret;
}
