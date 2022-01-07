
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_failaddr_t ;
struct xfs_da_blkinfo {int magic; } ;
struct xfs_buf {TYPE_1__* b_ops; struct xfs_da_blkinfo* b_addr; } ;
struct TYPE_3__ {int (* verify_read ) (struct xfs_buf*) ;} ;


 int EFSBADCRC ;
 int EFSCORRUPTED ;


 int XFS_DA3_NODE_CRC_OFF ;




 int __this_address ;
 int be16_to_cpu (int ) ;
 int stub1 (struct xfs_buf*) ;
 int stub2 (struct xfs_buf*) ;
 TYPE_1__ xfs_attr3_leaf_buf_ops ;
 int xfs_buf_verify_cksum (struct xfs_buf*,int ) ;
 int xfs_da3_node_verify (struct xfs_buf*) ;
 TYPE_1__ xfs_dir3_leafn_buf_ops ;
 int xfs_verifier_error (struct xfs_buf*,int ,int ) ;

__attribute__((used)) static void
xfs_da3_node_read_verify(
 struct xfs_buf *bp)
{
 struct xfs_da_blkinfo *info = bp->b_addr;
 xfs_failaddr_t fa;

 switch (be16_to_cpu(info->magic)) {
  case 131:
   if (!xfs_buf_verify_cksum(bp, XFS_DA3_NODE_CRC_OFF)) {
    xfs_verifier_error(bp, -EFSBADCRC,
      __this_address);
    break;
   }

  case 130:
   fa = xfs_da3_node_verify(bp);
   if (fa)
    xfs_verifier_error(bp, -EFSCORRUPTED, fa);
   return;
  case 132:
  case 133:
   bp->b_ops = &xfs_attr3_leaf_buf_ops;
   bp->b_ops->verify_read(bp);
   return;
  case 129:
  case 128:
   bp->b_ops = &xfs_dir3_leafn_buf_ops;
   bp->b_ops->verify_read(bp);
   return;
  default:
   xfs_verifier_error(bp, -EFSCORRUPTED, __this_address);
   break;
 }
}
