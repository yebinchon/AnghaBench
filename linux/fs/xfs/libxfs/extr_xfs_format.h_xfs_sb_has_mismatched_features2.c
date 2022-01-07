
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {scalar_t__ sb_bad_features2; scalar_t__ sb_features2; } ;



__attribute__((used)) static inline bool xfs_sb_has_mismatched_features2(struct xfs_sb *sbp)
{
 return sbp->sb_bad_features2 != sbp->sb_features2;
}
