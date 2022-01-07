
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_trans_t ;
typedef int xfs_inode_t ;
struct xfs_name {int dummy; } ;


 int xfs_dir_createname (int *,int *,struct xfs_name*,int ,int ) ;

int
xfs_dir_canenter(
 xfs_trans_t *tp,
 xfs_inode_t *dp,
 struct xfs_name *name)
{
 return xfs_dir_createname(tp, dp, name, 0, 0);
}
