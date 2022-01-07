
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfs_agblock_t ;
struct TYPE_7__ {scalar_t__ rc_blockcount; int rc_startblock; } ;
struct TYPE_8__ {TYPE_3__ rc; } ;
struct TYPE_5__ {int agno; } ;
struct TYPE_6__ {TYPE_1__ a; } ;
struct xfs_btree_cur {TYPE_4__ bc_rec; TYPE_2__ bc_private; int bc_mp; } ;


 int XFS_LOOKUP_GE ;
 int trace_xfs_refcount_lookup (int ,int ,int ,int ) ;
 int xfs_btree_lookup (struct xfs_btree_cur*,int ,int*) ;

int
xfs_refcount_lookup_ge(
 struct xfs_btree_cur *cur,
 xfs_agblock_t bno,
 int *stat)
{
 trace_xfs_refcount_lookup(cur->bc_mp, cur->bc_private.a.agno, bno,
   XFS_LOOKUP_GE);
 cur->bc_rec.rc.rc_startblock = bno;
 cur->bc_rec.rc.rc_blockcount = 0;
 return xfs_btree_lookup(cur, XFS_LOOKUP_GE, stat);
}
