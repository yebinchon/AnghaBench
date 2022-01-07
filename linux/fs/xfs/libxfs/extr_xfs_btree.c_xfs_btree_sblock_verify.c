
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
typedef int xfs_agblock_t ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {struct xfs_mount* b_mount; } ;
struct TYPE_3__ {scalar_t__ bb_leftsib; scalar_t__ bb_rightsib; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct xfs_btree_block {TYPE_2__ bb_u; int bb_numrecs; } ;


 int NULLAGBLOCK ;
 int XFS_BUF_ADDR (struct xfs_buf*) ;
 struct xfs_btree_block* XFS_BUF_TO_BLOCK (struct xfs_buf*) ;
 int * __this_address ;
 unsigned int be16_to_cpu (int ) ;
 int be32_to_cpu (scalar_t__) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int xfs_daddr_to_agno (struct xfs_mount*,int ) ;
 int xfs_verify_agbno (struct xfs_mount*,int ,int ) ;

xfs_failaddr_t
xfs_btree_sblock_verify(
 struct xfs_buf *bp,
 unsigned int max_recs)
{
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_btree_block *block = XFS_BUF_TO_BLOCK(bp);
 xfs_agblock_t agno;


 if (be16_to_cpu(block->bb_numrecs) > max_recs)
  return __this_address;


 agno = xfs_daddr_to_agno(mp, XFS_BUF_ADDR(bp));
 if (block->bb_u.s.bb_leftsib != cpu_to_be32(NULLAGBLOCK) &&
     !xfs_verify_agbno(mp, agno, be32_to_cpu(block->bb_u.s.bb_leftsib)))
  return __this_address;
 if (block->bb_u.s.bb_rightsib != cpu_to_be32(NULLAGBLOCK) &&
     !xfs_verify_agbno(mp, agno, be32_to_cpu(block->bb_u.s.bb_rightsib)))
  return __this_address;

 return ((void*)0);
}
