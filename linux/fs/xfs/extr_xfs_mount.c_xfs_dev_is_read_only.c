
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {scalar_t__ m_rtdev_targp; scalar_t__ m_logdev_targp; scalar_t__ m_ddev_targp; } ;


 int EROFS ;
 int xfs_notice (struct xfs_mount*,char*,...) ;
 scalar_t__ xfs_readonly_buftarg (scalar_t__) ;

int
xfs_dev_is_read_only(
 struct xfs_mount *mp,
 char *message)
{
 if (xfs_readonly_buftarg(mp->m_ddev_targp) ||
     xfs_readonly_buftarg(mp->m_logdev_targp) ||
     (mp->m_rtdev_targp && xfs_readonly_buftarg(mp->m_rtdev_targp))) {
  xfs_notice(mp, "%s required on read-only device.", message);
  xfs_notice(mp, "write access unavailable, cannot proceed.");
  return -EROFS;
 }
 return 0;
}
