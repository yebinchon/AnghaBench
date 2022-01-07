
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_mount {int m_flags; TYPE_2__* m_super; } ;
struct TYPE_3__ {int frozen; } ;
struct TYPE_4__ {TYPE_1__ s_writers; } ;


 int ASSERT (int) ;
 int SB_UNFROZEN ;
 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 int XFS_MOUNT_RDONLY ;

bool
xfs_fs_writable(
 struct xfs_mount *mp,
 int level)
{
 ASSERT(level > SB_UNFROZEN);
 if ((mp->m_super->s_writers.frozen >= level) ||
     XFS_FORCED_SHUTDOWN(mp) || (mp->m_flags & XFS_MOUNT_RDONLY))
  return 0;

 return 1;
}
