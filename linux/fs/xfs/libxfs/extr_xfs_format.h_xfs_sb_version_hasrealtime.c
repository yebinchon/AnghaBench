
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {scalar_t__ sb_rblocks; } ;



__attribute__((used)) static inline bool xfs_sb_version_hasrealtime(struct xfs_sb *sbp)
{
 return sbp->sb_rblocks > 0;
}
