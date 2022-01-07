
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_extlen_t ;
typedef int xfs_agblock_t ;
typedef void* uint64_t ;
struct TYPE_4__ {unsigned int rm_flags; void* rm_offset; void* rm_owner; int rm_blockcount; int rm_startblock; } ;
struct TYPE_3__ {TYPE_2__ r; } ;
struct xfs_btree_cur {TYPE_1__ bc_rec; } ;


 int XFS_LOOKUP_LE ;
 int xfs_btree_lookup (struct xfs_btree_cur*,int ,int*) ;

int
xfs_rmap_lookup_le(
 struct xfs_btree_cur *cur,
 xfs_agblock_t bno,
 xfs_extlen_t len,
 uint64_t owner,
 uint64_t offset,
 unsigned int flags,
 int *stat)
{
 cur->bc_rec.r.rm_startblock = bno;
 cur->bc_rec.r.rm_blockcount = len;
 cur->bc_rec.r.rm_owner = owner;
 cur->bc_rec.r.rm_offset = offset;
 cur->bc_rec.r.rm_flags = flags;
 return xfs_btree_lookup(cur, XFS_LOOKUP_LE, stat);
}
