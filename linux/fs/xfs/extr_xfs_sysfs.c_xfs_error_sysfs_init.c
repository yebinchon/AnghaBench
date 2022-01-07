
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobject; } ;
struct xfs_mount {TYPE_1__ m_error_kobj; int m_error_meta_kobj; int m_kobj; } ;


 int ATTR_LIST (int ) ;
 int XFS_ERR_METADATA ;
 int fail_at_unmount ;
 int sysfs_create_file (int *,int ) ;
 int xfs_error_ktype ;
 int xfs_error_meta_init ;
 int xfs_error_sysfs_init_class (struct xfs_mount*,int ,char*,int *,int ) ;
 int xfs_sysfs_del (TYPE_1__*) ;
 int xfs_sysfs_init (TYPE_1__*,int *,int *,char*) ;

int
xfs_error_sysfs_init(
 struct xfs_mount *mp)
{
 int error;


 error = xfs_sysfs_init(&mp->m_error_kobj, &xfs_error_ktype,
    &mp->m_kobj, "error");
 if (error)
  return error;

 error = sysfs_create_file(&mp->m_error_kobj.kobject,
      ATTR_LIST(fail_at_unmount));

 if (error)
  goto out_error;


 error = xfs_error_sysfs_init_class(mp, XFS_ERR_METADATA,
    "metadata", &mp->m_error_meta_kobj,
    xfs_error_meta_init);
 if (error)
  goto out_error;

 return 0;

out_error:
 xfs_sysfs_del(&mp->m_error_kobj);
 return error;
}
