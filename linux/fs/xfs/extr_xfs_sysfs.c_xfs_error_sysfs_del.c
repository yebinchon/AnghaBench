
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_error_kobj; int m_error_meta_kobj; struct xfs_error_cfg** m_error_cfg; } ;
struct xfs_error_cfg {int kobj; } ;


 int XFS_ERR_CLASS_MAX ;
 int XFS_ERR_ERRNO_MAX ;
 int xfs_sysfs_del (int *) ;

void
xfs_error_sysfs_del(
 struct xfs_mount *mp)
{
 struct xfs_error_cfg *cfg;
 int i, j;

 for (i = 0; i < XFS_ERR_CLASS_MAX; i++) {
  for (j = 0; j < XFS_ERR_ERRNO_MAX; j++) {
   cfg = &mp->m_error_cfg[i][j];

   xfs_sysfs_del(&cfg->kobj);
  }
 }
 xfs_sysfs_del(&mp->m_error_meta_kobj);
 xfs_sysfs_del(&mp->m_error_kobj);
}
