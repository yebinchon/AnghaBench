
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sb_rblocks; } ;
struct TYPE_6__ {TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;


 int ENOSYS ;
 int xfs_warn (TYPE_2__*,char*) ;

__attribute__((used)) static inline int
xfs_rtmount_init(
 xfs_mount_t *mp)
{
 if (mp->m_sb.sb_rblocks == 0)
  return 0;

 xfs_warn(mp, "Not built with CONFIG_XFS_RT");
 return -ENOSYS;
}
