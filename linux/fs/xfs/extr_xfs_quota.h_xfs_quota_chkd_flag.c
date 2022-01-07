
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;





 int XFS_GQUOTA_CHKD ;
 int XFS_PQUOTA_CHKD ;
 int XFS_UQUOTA_CHKD ;

__attribute__((used)) static inline uint
xfs_quota_chkd_flag(
 uint dqtype)
{
 switch (dqtype) {
 case 128:
  return XFS_UQUOTA_CHKD;
 case 130:
  return XFS_GQUOTA_CHKD;
 case 129:
  return XFS_PQUOTA_CHKD;
 default:
  return 0;
 }
}
