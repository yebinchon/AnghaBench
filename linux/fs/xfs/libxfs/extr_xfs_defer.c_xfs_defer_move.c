
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int t_flags; int t_dfops; } ;


 int XFS_TRANS_LOWMODE ;
 int list_splice_init (int *,int *) ;
 int xfs_defer_reset (struct xfs_trans*) ;

void
xfs_defer_move(
 struct xfs_trans *dtp,
 struct xfs_trans *stp)
{
 list_splice_init(&stp->t_dfops, &dtp->t_dfops);







 dtp->t_flags |= (stp->t_flags & XFS_TRANS_LOWMODE);

 xfs_defer_reset(stp);
}
