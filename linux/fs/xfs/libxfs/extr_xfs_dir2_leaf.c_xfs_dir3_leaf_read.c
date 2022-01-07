
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_daddr_t ;
typedef int xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int XFS_BLFT_DIR_LEAF1_BUF ;
 int XFS_DATA_FORK ;
 int xfs_da_read_buf (struct xfs_trans*,struct xfs_inode*,int ,int ,struct xfs_buf**,int ,int *) ;
 int xfs_dir3_leaf1_buf_ops ;
 int xfs_trans_buf_set_type (struct xfs_trans*,struct xfs_buf*,int ) ;

int
xfs_dir3_leaf_read(
 struct xfs_trans *tp,
 struct xfs_inode *dp,
 xfs_dablk_t fbno,
 xfs_daddr_t mappedbno,
 struct xfs_buf **bpp)
{
 int err;

 err = xfs_da_read_buf(tp, dp, fbno, mappedbno, bpp,
    XFS_DATA_FORK, &xfs_dir3_leaf1_buf_ops);
 if (!err && tp && *bpp)
  xfs_trans_buf_set_type(tp, *bpp, XFS_BLFT_DIR_LEAF1_BUF);
 return err;
}
