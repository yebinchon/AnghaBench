
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sb_features_ro_compat; } ;
typedef TYPE_1__ xfs_sb_t ;


 int XFS_SB_FEAT_RO_COMPAT_FINOBT ;
 scalar_t__ XFS_SB_VERSION_5 ;
 scalar_t__ XFS_SB_VERSION_NUM (TYPE_1__*) ;

__attribute__((used)) static inline bool xfs_sb_version_hasfinobt(xfs_sb_t *sbp)
{
 return (XFS_SB_VERSION_NUM(sbp) == XFS_SB_VERSION_5) &&
  (sbp->sb_features_ro_compat & XFS_SB_FEAT_RO_COMPAT_FINOBT);
}
