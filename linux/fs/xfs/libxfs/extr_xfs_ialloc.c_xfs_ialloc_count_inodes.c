
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agino_t ;
struct xfs_ialloc_count_inodes {int freecount; int count; int member_0; } ;
struct xfs_btree_cur {scalar_t__ bc_btnum; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_BTNUM_INO ;
 int xfs_btree_query_all (struct xfs_btree_cur*,int ,struct xfs_ialloc_count_inodes*) ;
 int xfs_ialloc_count_inodes_rec ;

int
xfs_ialloc_count_inodes(
 struct xfs_btree_cur *cur,
 xfs_agino_t *count,
 xfs_agino_t *freecount)
{
 struct xfs_ialloc_count_inodes ci = {0};
 int error;

 ASSERT(cur->bc_btnum == XFS_BTNUM_INO);
 error = xfs_btree_query_all(cur, xfs_ialloc_count_inodes_rec, &ci);
 if (error)
  return error;

 *count = ci.count;
 *freecount = ci.freecount;
 return 0;
}
