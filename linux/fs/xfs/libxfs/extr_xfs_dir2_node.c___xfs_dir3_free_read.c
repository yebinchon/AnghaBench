
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_failaddr_t ;
typedef int xfs_daddr_t ;
typedef int xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int EFSCORRUPTED ;
 int XFS_BLFT_DIR_FREE_BUF ;
 int XFS_DATA_FORK ;
 int xfs_da_read_buf (struct xfs_trans*,struct xfs_inode*,int ,int ,struct xfs_buf**,int ,int *) ;
 int xfs_dir3_free_buf_ops ;
 scalar_t__ xfs_dir3_free_header_check (struct xfs_inode*,int ,struct xfs_buf*) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;
 int xfs_trans_buf_set_type (struct xfs_trans*,struct xfs_buf*,int ) ;
 int xfs_verifier_error (struct xfs_buf*,int,scalar_t__) ;

__attribute__((used)) static int
__xfs_dir3_free_read(
 struct xfs_trans *tp,
 struct xfs_inode *dp,
 xfs_dablk_t fbno,
 xfs_daddr_t mappedbno,
 struct xfs_buf **bpp)
{
 xfs_failaddr_t fa;
 int err;

 err = xfs_da_read_buf(tp, dp, fbno, mappedbno, bpp,
    XFS_DATA_FORK, &xfs_dir3_free_buf_ops);
 if (err || !*bpp)
  return err;


 fa = xfs_dir3_free_header_check(dp, fbno, *bpp);
 if (fa) {
  xfs_verifier_error(*bpp, -EFSCORRUPTED, fa);
  xfs_trans_brelse(tp, *bpp);
  return -EFSCORRUPTED;
 }


 if (tp)
  xfs_trans_buf_set_type(tp, *bpp, XFS_BLFT_DIR_FREE_BUF);

 return 0;
}
