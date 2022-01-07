
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ xfs_agblock_t ;
typedef scalar_t__ uint64_t ;
struct xfs_rmap_irec {int rm_flags; int rm_offset; int rm_owner; int rm_blockcount; int rm_startblock; } ;
struct TYPE_7__ {unsigned int rm_flags; scalar_t__ rm_blockcount; scalar_t__ rm_offset; scalar_t__ rm_owner; scalar_t__ rm_startblock; } ;
struct xfs_find_left_neighbor_info {int* stat; TYPE_3__ high; struct xfs_rmap_irec* irec; } ;
struct TYPE_5__ {int agno; } ;
struct TYPE_6__ {TYPE_1__ a; } ;
struct xfs_btree_cur {TYPE_2__ bc_private; int bc_mp; } ;


 int ECANCELED ;
 unsigned int XFS_RMAP_BMBT_BLOCK ;
 int XFS_RMAP_NON_INODE_OWNER (scalar_t__) ;
 int trace_xfs_rmap_find_left_neighbor_query (int ,int ,scalar_t__,int ,scalar_t__,scalar_t__,unsigned int) ;
 int trace_xfs_rmap_find_left_neighbor_result (int ,int ,int ,int ,int ,int ,int ) ;
 int xfs_rmap_find_left_neighbor_helper ;
 int xfs_rmap_query_range (struct xfs_btree_cur*,TYPE_3__*,TYPE_3__*,int ,struct xfs_find_left_neighbor_info*) ;

int
xfs_rmap_find_left_neighbor(
 struct xfs_btree_cur *cur,
 xfs_agblock_t bno,
 uint64_t owner,
 uint64_t offset,
 unsigned int flags,
 struct xfs_rmap_irec *irec,
 int *stat)
{
 struct xfs_find_left_neighbor_info info;
 int error;

 *stat = 0;
 if (bno == 0)
  return 0;
 info.high.rm_startblock = bno - 1;
 info.high.rm_owner = owner;
 if (!XFS_RMAP_NON_INODE_OWNER(owner) &&
     !(flags & XFS_RMAP_BMBT_BLOCK)) {
  if (offset == 0)
   return 0;
  info.high.rm_offset = offset - 1;
 } else
  info.high.rm_offset = 0;
 info.high.rm_flags = flags;
 info.high.rm_blockcount = 0;
 info.irec = irec;
 info.stat = stat;

 trace_xfs_rmap_find_left_neighbor_query(cur->bc_mp,
   cur->bc_private.a.agno, bno, 0, owner, offset, flags);

 error = xfs_rmap_query_range(cur, &info.high, &info.high,
   xfs_rmap_find_left_neighbor_helper, &info);
 if (error == -ECANCELED)
  error = 0;
 if (*stat)
  trace_xfs_rmap_find_left_neighbor_result(cur->bc_mp,
    cur->bc_private.a.agno, irec->rm_startblock,
    irec->rm_blockcount, irec->rm_owner,
    irec->rm_offset, irec->rm_flags);
 return error;
}
