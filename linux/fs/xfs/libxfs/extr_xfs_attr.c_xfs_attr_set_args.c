
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ di_aformat; scalar_t__ di_anextents; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct xfs_da_args {int trans; struct xfs_inode* dp; } ;
struct xfs_buf {int dummy; } ;


 int ENOSPC ;
 int XFS_ATTR_FORK ;
 scalar_t__ XFS_DINODE_FMT_EXTENTS ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int xfs_attr_leaf_addname (struct xfs_da_args*) ;
 int xfs_attr_node_addname (struct xfs_da_args*) ;
 int xfs_attr_shortform_create (struct xfs_da_args*) ;
 int xfs_attr_shortform_to_leaf (struct xfs_da_args*,struct xfs_buf**) ;
 int xfs_attr_try_sf_addname (struct xfs_inode*,struct xfs_da_args*) ;
 scalar_t__ xfs_bmap_one_block (struct xfs_inode*,int ) ;
 int xfs_defer_finish (int *) ;
 int xfs_trans_bhold (int ,struct xfs_buf*) ;
 int xfs_trans_bhold_release (int ,struct xfs_buf*) ;
 int xfs_trans_brelse (int ,struct xfs_buf*) ;

int
xfs_attr_set_args(
 struct xfs_da_args *args)
{
 struct xfs_inode *dp = args->dp;
 struct xfs_buf *leaf_bp = ((void*)0);
 int error;





 if (dp->i_d.di_aformat == XFS_DINODE_FMT_LOCAL ||
     (dp->i_d.di_aformat == XFS_DINODE_FMT_EXTENTS &&
      dp->i_d.di_anextents == 0)) {




  if (dp->i_d.di_aformat == XFS_DINODE_FMT_EXTENTS)
   xfs_attr_shortform_create(args);




  error = xfs_attr_try_sf_addname(dp, args);
  if (error != -ENOSPC)
   return error;





  error = xfs_attr_shortform_to_leaf(args, &leaf_bp);
  if (error)
   return error;
  xfs_trans_bhold(args->trans, leaf_bp);
  error = xfs_defer_finish(&args->trans);
  xfs_trans_bhold_release(args->trans, leaf_bp);
  if (error) {
   xfs_trans_brelse(args->trans, leaf_bp);
   return error;
  }
 }

 if (xfs_bmap_one_block(dp, XFS_ATTR_FORK))
  error = xfs_attr_leaf_addname(args);
 else
  error = xfs_attr_node_addname(args);
 return error;
}
