
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_ino_t ;
struct xfs_sb {scalar_t__ sb_uquotino; scalar_t__ sb_gquotino; scalar_t__ sb_pquotino; } ;



__attribute__((used)) static inline bool
xfs_is_quota_inode(struct xfs_sb *sbp, xfs_ino_t ino)
{
 return (ino == sbp->sb_uquotino ||
  ino == sbp->sb_gquotino ||
  ino == sbp->sb_pquotino);
}
