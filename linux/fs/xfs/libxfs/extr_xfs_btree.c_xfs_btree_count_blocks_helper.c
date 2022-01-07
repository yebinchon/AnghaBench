
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_extlen_t ;
struct xfs_btree_cur {int dummy; } ;



__attribute__((used)) static int
xfs_btree_count_blocks_helper(
 struct xfs_btree_cur *cur,
 int level,
 void *data)
{
 xfs_extlen_t *blocks = data;
 (*blocks)++;

 return 0;
}
