
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xfs_sb {int sb_features_ro_compat; } ;



__attribute__((used)) static inline bool
xfs_sb_has_ro_compat_feature(
 struct xfs_sb *sbp,
 uint32_t feature)
{
 return (sbp->sb_features_ro_compat & feature) != 0;
}
