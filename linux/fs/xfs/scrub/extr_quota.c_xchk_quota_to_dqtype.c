
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct xfs_scrub {TYPE_1__* sm; } ;
struct TYPE_2__ {int sm_type; } ;


 int XFS_DQ_GROUP ;
 int XFS_DQ_PROJ ;
 int XFS_DQ_USER ;




__attribute__((used)) static inline uint
xchk_quota_to_dqtype(
 struct xfs_scrub *sc)
{
 switch (sc->sm->sm_type) {
 case 128:
  return XFS_DQ_USER;
 case 130:
  return XFS_DQ_GROUP;
 case 129:
  return XFS_DQ_PROJ;
 default:
  return 0;
 }
}
