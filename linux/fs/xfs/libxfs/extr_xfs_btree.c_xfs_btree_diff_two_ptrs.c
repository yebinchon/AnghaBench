
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union xfs_btree_ptr {int s; int l; } ;
struct xfs_btree_cur {int bc_flags; } ;
typedef scalar_t__ int64_t ;


 int XFS_BTREE_LONG_PTRS ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;

int64_t
xfs_btree_diff_two_ptrs(
 struct xfs_btree_cur *cur,
 const union xfs_btree_ptr *a,
 const union xfs_btree_ptr *b)
{
 if (cur->bc_flags & XFS_BTREE_LONG_PTRS)
  return (int64_t)be64_to_cpu(a->l) - be64_to_cpu(b->l);
 return (int64_t)be32_to_cpu(a->s) - be32_to_cpu(b->s);
}
