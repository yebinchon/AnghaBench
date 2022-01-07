
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {struct xfs_error_cfg** m_error_cfg; } ;
struct xfs_error_cfg {int dummy; } ;





 size_t XFS_ERR_DEFAULT ;
 size_t XFS_ERR_EIO ;
 size_t XFS_ERR_ENODEV ;
 size_t XFS_ERR_ENOSPC ;

struct xfs_error_cfg *
xfs_error_get_cfg(
 struct xfs_mount *mp,
 int error_class,
 int error)
{
 struct xfs_error_cfg *cfg;

 if (error < 0)
  error = -error;

 switch (error) {
 case 130:
  cfg = &mp->m_error_cfg[error_class][XFS_ERR_EIO];
  break;
 case 128:
  cfg = &mp->m_error_cfg[error_class][XFS_ERR_ENOSPC];
  break;
 case 129:
  cfg = &mp->m_error_cfg[error_class][XFS_ERR_ENODEV];
  break;
 default:
  cfg = &mp->m_error_cfg[error_class][XFS_ERR_DEFAULT];
  break;
 }

 return cfg;
}
