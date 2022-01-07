
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int __xfs_dir3_free_read (struct xfs_trans*,struct xfs_inode*,int ,int,struct xfs_buf**) ;

__attribute__((used)) static int
xfs_dir2_free_try_read(
 struct xfs_trans *tp,
 struct xfs_inode *dp,
 xfs_dablk_t fbno,
 struct xfs_buf **bpp)
{
 return __xfs_dir3_free_read(tp, dp, fbno, -2, bpp);
}
