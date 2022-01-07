
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans {TYPE_1__* t_mountp; } ;
struct TYPE_2__ {int m_flags; } ;


 int XFS_MOUNT_DIRSYNC ;
 int XFS_MOUNT_WSYNC ;
 int xfs_trans_commit (struct xfs_trans*) ;
 int xfs_trans_set_sync (struct xfs_trans*) ;

__attribute__((used)) static int
xfs_finish_rename(
 struct xfs_trans *tp)
{




 if (tp->t_mountp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC))
  xfs_trans_set_sync(tp);

 return xfs_trans_commit(tp);
}
