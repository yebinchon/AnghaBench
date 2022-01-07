
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_btree_cur {int bc_flags; int bc_nlevels; scalar_t__* bc_ptrs; } ;


 int XFS_BTREE_OVERLAPPING ;
 int xfs_btree_decrement (struct xfs_btree_cur*,int,int*) ;
 int xfs_btree_delrec (struct xfs_btree_cur*,int,int*) ;
 int xfs_btree_updkeys_force (struct xfs_btree_cur*,int ) ;

int
xfs_btree_delete(
 struct xfs_btree_cur *cur,
 int *stat)
{
 int error;
 int level;
 int i;
 bool joined = 0;







 for (level = 0, i = 2; i == 2; level++) {
  error = xfs_btree_delrec(cur, level, &i);
  if (error)
   goto error0;
  if (i == 2)
   joined = 1;
 }





 if (joined && (cur->bc_flags & XFS_BTREE_OVERLAPPING)) {
  error = xfs_btree_updkeys_force(cur, 0);
  if (error)
   goto error0;
 }

 if (i == 0) {
  for (level = 1; level < cur->bc_nlevels; level++) {
   if (cur->bc_ptrs[level] == 0) {
    error = xfs_btree_decrement(cur, level, &i);
    if (error)
     goto error0;
    break;
   }
  }
 }

 *stat = i;
 return 0;
error0:
 return error;
}
