
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct ocfs2_refcount_tree* osb_ref_tree_lru; int osb_rf_lock_tree; } ;
struct ocfs2_refcount_tree {int rf_node; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static inline void
ocfs2_erase_refcount_tree_from_list_no_lock(struct ocfs2_super *osb,
     struct ocfs2_refcount_tree *tree)
{
 rb_erase(&tree->rf_node, &osb->osb_rf_lock_tree);
 if (osb->osb_ref_tree_lru && osb->osb_ref_tree_lru == tree)
  osb->osb_ref_tree_lru = ((void*)0);
}
