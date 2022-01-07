
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_mount {int dummy; } ;


 int EINVAL ;
 int ESRCH ;
 scalar_t__ WARN_ON_ONCE (int) ;



 int XFS_IS_GQUOTA_ON (struct xfs_mount*) ;
 int XFS_IS_PQUOTA_ON (struct xfs_mount*) ;
 int XFS_IS_QUOTA_RUNNING (struct xfs_mount*) ;
 int XFS_IS_UQUOTA_ON (struct xfs_mount*) ;

__attribute__((used)) static int
xfs_qm_dqget_checks(
 struct xfs_mount *mp,
 uint type)
{
 if (WARN_ON_ONCE(!XFS_IS_QUOTA_RUNNING(mp)))
  return -ESRCH;

 switch (type) {
 case 128:
  if (!XFS_IS_UQUOTA_ON(mp))
   return -ESRCH;
  return 0;
 case 130:
  if (!XFS_IS_GQUOTA_ON(mp))
   return -ESRCH;
  return 0;
 case 129:
  if (!XFS_IS_PQUOTA_ON(mp))
   return -ESRCH;
  return 0;
 default:
  WARN_ON_ONCE(0);
  return -EINVAL;
 }
}
