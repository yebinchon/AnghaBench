
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_fileoff_t ;
struct xfs_iext_node {scalar_t__* keys; } ;



__attribute__((used)) static inline int
xfs_iext_key_cmp(
 struct xfs_iext_node *node,
 int n,
 xfs_fileoff_t offset)
{
 if (node->keys[n] > offset)
  return 1;
 if (node->keys[n] < offset)
  return -1;
 return 0;
}
