
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_daddr_t ;
typedef int xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int XFS_BLFT_DIR_DATA_BUF ;
 int XFS_DATA_FORK ;
 int xfs_da_read_buf (struct xfs_trans*,struct xfs_inode*,int ,int ,struct xfs_buf**,int ,int *) ;
 int xfs_dir3_data_buf_ops ;
 int xfs_trans_buf_set_type (struct xfs_trans*,struct xfs_buf*,int ) ;

int
xfs_dir3_data_read(
 struct xfs_trans *tp,
 struct xfs_inode *dp,
 xfs_dablk_t bno,
 xfs_daddr_t mapped_bno,
 struct xfs_buf **bpp)
{
 int err;

 err = xfs_da_read_buf(tp, dp, bno, mapped_bno, bpp,
    XFS_DATA_FORK, &xfs_dir3_data_buf_ops);
 if (!err && tp && *bpp)
  xfs_trans_buf_set_type(tp, *bpp, XFS_BLFT_DIR_DATA_BUF);
 return err;
}
