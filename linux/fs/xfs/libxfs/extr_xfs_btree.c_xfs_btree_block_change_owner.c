
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int bc_flags; int bc_nlevels; scalar_t__ bc_tp; } ;
struct xfs_btree_block_change_owner_info {int buffer_list; int new_owner; } ;
struct TYPE_5__ {scalar_t__ bb_owner; } ;
struct TYPE_4__ {scalar_t__ bb_owner; } ;
struct TYPE_6__ {TYPE_2__ s; TYPE_1__ l; } ;
struct xfs_btree_block {TYPE_3__ bb_u; } ;


 int ASSERT (int) ;
 int EAGAIN ;
 int XFS_BB_OWNER ;
 int XFS_BTREE_LONG_PTRS ;
 int XFS_BTREE_ROOT_IN_INODE ;
 scalar_t__ cpu_to_be32 (int ) ;
 scalar_t__ cpu_to_be64 (int ) ;
 struct xfs_btree_block* xfs_btree_get_block (struct xfs_btree_cur*,int,struct xfs_buf**) ;
 int xfs_btree_log_block (struct xfs_btree_cur*,struct xfs_buf*,int ) ;
 int xfs_buf_delwri_queue (struct xfs_buf*,int ) ;
 int xfs_trans_ordered_buf (scalar_t__,struct xfs_buf*) ;

__attribute__((used)) static int
xfs_btree_block_change_owner(
 struct xfs_btree_cur *cur,
 int level,
 void *data)
{
 struct xfs_btree_block_change_owner_info *bbcoi = data;
 struct xfs_btree_block *block;
 struct xfs_buf *bp;


 block = xfs_btree_get_block(cur, level, &bp);
 if (cur->bc_flags & XFS_BTREE_LONG_PTRS) {
  if (block->bb_u.l.bb_owner == cpu_to_be64(bbcoi->new_owner))
   return 0;
  block->bb_u.l.bb_owner = cpu_to_be64(bbcoi->new_owner);
 } else {
  if (block->bb_u.s.bb_owner == cpu_to_be32(bbcoi->new_owner))
   return 0;
  block->bb_u.s.bb_owner = cpu_to_be32(bbcoi->new_owner);
 }
 if (!bp) {
  ASSERT(cur->bc_flags & XFS_BTREE_ROOT_IN_INODE);
  ASSERT(level == cur->bc_nlevels - 1);
  return 0;
 }

 if (cur->bc_tp) {
  if (!xfs_trans_ordered_buf(cur->bc_tp, bp)) {
   xfs_btree_log_block(cur, bp, XFS_BB_OWNER);
   return -EAGAIN;
  }
 } else {
  xfs_buf_delwri_queue(bp, bbcoi->buffer_list);
 }

 return 0;
}
