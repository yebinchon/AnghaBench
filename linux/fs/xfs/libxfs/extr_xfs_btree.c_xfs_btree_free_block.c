
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int bc_tp; TYPE_1__* bc_ops; } ;
struct TYPE_2__ {int (* free_block ) (struct xfs_btree_cur*,struct xfs_buf*) ;} ;


 int XFS_BTREE_STATS_INC (struct xfs_btree_cur*,int ) ;
 int free ;
 int stub1 (struct xfs_btree_cur*,struct xfs_buf*) ;
 int xfs_trans_binval (int ,struct xfs_buf*) ;

__attribute__((used)) static int
xfs_btree_free_block(
 struct xfs_btree_cur *cur,
 struct xfs_buf *bp)
{
 int error;

 error = cur->bc_ops->free_block(cur, bp);
 if (!error) {
  xfs_trans_binval(cur->bc_tp, bp);
  XFS_BTREE_STATS_INC(cur, free);
 }
 return error;
}
