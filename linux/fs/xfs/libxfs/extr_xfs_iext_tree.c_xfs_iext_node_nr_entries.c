
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_iext_node {scalar_t__* keys; } ;


 int KEYS_PER_NODE ;
 scalar_t__ XFS_IEXT_KEY_INVALID ;

__attribute__((used)) static int
xfs_iext_node_nr_entries(
 struct xfs_iext_node *node,
 int start)
{
 int i;

 for (i = start; i < KEYS_PER_NODE; i++) {
  if (node->keys[i] == XFS_IEXT_KEY_INVALID)
   break;
 }

 return i;
}
