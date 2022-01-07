
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xfs_sb {int sb_features_incompat; } ;



__attribute__((used)) static inline bool
xfs_sb_has_incompat_feature(
 struct xfs_sb *sbp,
 uint32_t feature)
{
 return (sbp->sb_features_incompat & feature) != 0;
}
