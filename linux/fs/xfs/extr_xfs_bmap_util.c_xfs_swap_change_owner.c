
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int dummy; } ;
struct xfs_inode {int i_ino; } ;


 int EAGAIN ;
 int XFS_DATA_FORK ;
 int XFS_ILOG_CORE ;
 int xfs_bmbt_change_owner (struct xfs_trans*,struct xfs_inode*,int ,int ,int *) ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_trans_log_inode (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_trans_roll (struct xfs_trans**) ;

__attribute__((used)) static int
xfs_swap_change_owner(
 struct xfs_trans **tpp,
 struct xfs_inode *ip,
 struct xfs_inode *tmpip)
{
 int error;
 struct xfs_trans *tp = *tpp;

 do {
  error = xfs_bmbt_change_owner(tp, ip, XFS_DATA_FORK, ip->i_ino,
           ((void*)0));

  if (error != -EAGAIN)
   break;

  error = xfs_trans_roll(tpp);
  if (error)
   break;
  tp = *tpp;





  xfs_trans_ijoin(tp, ip, 0);
  xfs_trans_ijoin(tp, tmpip, 0);
  xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);
  xfs_trans_log_inode(tp, tmpip, XFS_ILOG_CORE);
 } while (1);

 return error;
}
