
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_extlen_t ;
typedef int xfs_agblock_t ;
struct TYPE_3__ {int ar_blockcount; int ar_startblock; } ;
struct TYPE_4__ {TYPE_1__ a; } ;
struct xfs_btree_cur {TYPE_2__ bc_rec; } ;


 int XFS_LOOKUP_GE ;
 int xfs_btree_lookup (struct xfs_btree_cur*,int ,int*) ;

int
xfs_alloc_lookup_ge(
 struct xfs_btree_cur *cur,
 xfs_agblock_t bno,
 xfs_extlen_t len,
 int *stat)
{
 cur->bc_rec.a.ar_startblock = bno;
 cur->bc_rec.a.ar_blockcount = len;
 return xfs_btree_lookup(cur, XFS_LOOKUP_GE, stat);
}
