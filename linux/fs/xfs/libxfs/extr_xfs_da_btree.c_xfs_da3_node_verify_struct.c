
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_failaddr_t ;
struct xfs_da_blkinfo {int magic; } ;
struct xfs_buf {TYPE_1__* b_ops; struct xfs_da_blkinfo* b_addr; } ;
struct TYPE_3__ {int (* verify_struct ) (struct xfs_buf*) ;} ;
 int __this_address ;
 int be16_to_cpu (int ) ;
 int stub1 (struct xfs_buf*) ;
 int stub2 (struct xfs_buf*) ;
 TYPE_1__ xfs_attr3_leaf_buf_ops ;
 int xfs_da3_node_verify (struct xfs_buf*) ;
 TYPE_1__ xfs_dir3_leafn_buf_ops ;

__attribute__((used)) static xfs_failaddr_t
xfs_da3_node_verify_struct(
 struct xfs_buf *bp)
{
 struct xfs_da_blkinfo *info = bp->b_addr;

 switch (be16_to_cpu(info->magic)) {
 case 131:
 case 130:
  return xfs_da3_node_verify(bp);
 case 132:
 case 133:
  bp->b_ops = &xfs_attr3_leaf_buf_ops;
  return bp->b_ops->verify_struct(bp);
 case 129:
 case 128:
  bp->b_ops = &xfs_dir3_leafn_buf_ops;
  return bp->b_ops->verify_struct(bp);
 default:
  return __this_address;
 }
}
