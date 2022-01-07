
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_daddr_t ;
typedef int xfs_dablk_t ;
struct xfs_inode {int dummy; } ;


 int XFS_DATA_FORK ;
 int xfs_da_reada_buf (struct xfs_inode*,int ,int ,int ,int *) ;
 int xfs_dir3_data_reada_buf_ops ;

int
xfs_dir3_data_readahead(
 struct xfs_inode *dp,
 xfs_dablk_t bno,
 xfs_daddr_t mapped_bno)
{
 return xfs_da_reada_buf(dp, bno, mapped_bno,
    XFS_DATA_FORK, &xfs_dir3_data_reada_buf_ops);
}
