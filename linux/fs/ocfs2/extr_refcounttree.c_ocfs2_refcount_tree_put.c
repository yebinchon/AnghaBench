
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_tree {int rf_getcnt; } ;


 int kref_put (int *,int ) ;
 int ocfs2_kref_remove_refcount_tree ;

__attribute__((used)) static inline void
ocfs2_refcount_tree_put(struct ocfs2_refcount_tree *tree)
{
 kref_put(&tree->rf_getcnt, ocfs2_kref_remove_refcount_tree);
}
