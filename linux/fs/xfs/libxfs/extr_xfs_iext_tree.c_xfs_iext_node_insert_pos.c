
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fileoff_t ;
struct xfs_iext_node {int dummy; } ;


 int KEYS_PER_NODE ;
 scalar_t__ xfs_iext_key_cmp (struct xfs_iext_node*,int,int ) ;

__attribute__((used)) static int
xfs_iext_node_insert_pos(
 struct xfs_iext_node *node,
 xfs_fileoff_t offset)
{
 int i;

 for (i = 0; i < KEYS_PER_NODE; i++) {
  if (xfs_iext_key_cmp(node, i, offset) > 0)
   return i;
 }

 return KEYS_PER_NODE;
}
