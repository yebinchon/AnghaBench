
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int t_flags; int t_mountp; } ;


 int SHUTDOWN_CORRUPT_INCORE ;
 int XFS_TRANS_DIRTY ;
 int xfs_defer_finish_noroll (struct xfs_trans**) ;
 int xfs_defer_reset (struct xfs_trans*) ;
 int xfs_defer_trans_roll (struct xfs_trans**) ;
 int xfs_force_shutdown (int ,int ) ;

int
xfs_defer_finish(
 struct xfs_trans **tp)
{
 int error;





 error = xfs_defer_finish_noroll(tp);
 if (error)
  return error;
 if ((*tp)->t_flags & XFS_TRANS_DIRTY) {
  error = xfs_defer_trans_roll(tp);
  if (error) {
   xfs_force_shutdown((*tp)->t_mountp,
        SHUTDOWN_CORRUPT_INCORE);
   return error;
  }
 }
 xfs_defer_reset(*tp);
 return 0;
}
