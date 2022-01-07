
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int sb_blocklog; int sb_dirblklog; } ;



__attribute__((used)) static inline unsigned int xfs_dir2_dirblock_bytes(struct xfs_sb *sbp)
{
 return 1 << (sbp->sb_blocklog + sbp->sb_dirblklog);
}
