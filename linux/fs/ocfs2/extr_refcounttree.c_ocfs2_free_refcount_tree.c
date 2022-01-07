
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_tree {int rf_lockres; int rf_sb; int rf_ci; } ;


 int OCFS2_SB (int ) ;
 int kfree (struct ocfs2_refcount_tree*) ;
 int ocfs2_lock_res_free (int *) ;
 int ocfs2_metadata_cache_exit (int *) ;
 int ocfs2_simple_drop_lockres (int ,int *) ;

__attribute__((used)) static void ocfs2_free_refcount_tree(struct ocfs2_refcount_tree *tree)
{
 ocfs2_metadata_cache_exit(&tree->rf_ci);
 ocfs2_simple_drop_lockres(OCFS2_SB(tree->rf_sb), &tree->rf_lockres);
 ocfs2_lock_res_free(&tree->rf_lockres);
 kfree(tree);
}
