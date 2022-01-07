
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_iext_node {scalar_t__* keys; struct xfs_iext_node** ptrs; } ;


 int KEYS_PER_NODE ;
 scalar_t__ XFS_IEXT_KEY_INVALID ;
 int kmem_free (struct xfs_iext_node*) ;

__attribute__((used)) static void
xfs_iext_destroy_node(
 struct xfs_iext_node *node,
 int level)
{
 int i;

 if (level > 1) {
  for (i = 0; i < KEYS_PER_NODE; i++) {
   if (node->keys[i] == XFS_IEXT_KEY_INVALID)
    break;
   xfs_iext_destroy_node(node->ptrs[i], level - 1);
  }
 }

 kmem_free(node);
}
