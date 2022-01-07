
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long sb_blocklog; } ;
struct TYPE_5__ {int m_flags; int m_swidth; int m_writeio_log; int m_readio_log; TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;


 unsigned long PAGE_SIZE ;
 int XFS_MOUNT_COMPAT_IOSIZE ;
 int XFS_MOUNT_DFLT_IOSIZE ;
 scalar_t__ max (int ,int ) ;

__attribute__((used)) static inline unsigned long
xfs_preferred_iosize(xfs_mount_t *mp)
{
 if (mp->m_flags & XFS_MOUNT_COMPAT_IOSIZE)
  return PAGE_SIZE;
 return (mp->m_swidth ?
  (mp->m_swidth << mp->m_sb.sb_blocklog) :
  ((mp->m_flags & XFS_MOUNT_DFLT_IOSIZE) ?
   (1 << (int)max(mp->m_readio_log, mp->m_writeio_log)) :
   PAGE_SIZE));
}
