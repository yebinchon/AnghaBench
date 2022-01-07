
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int dummy; } ;
struct xfs_inode {int dummy; } ;


 int XFS_ILOG_CORE ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_trans_log_inode (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_trans_roll (struct xfs_trans**) ;

int
xfs_trans_roll_inode(
 struct xfs_trans **tpp,
 struct xfs_inode *ip)
{
 int error;

 xfs_trans_log_inode(*tpp, ip, XFS_ILOG_CORE);
 error = xfs_trans_roll(tpp);
 if (!error)
  xfs_trans_ijoin(*tpp, ip, 0);
 return error;
}
