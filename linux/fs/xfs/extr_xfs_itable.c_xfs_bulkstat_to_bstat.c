
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_mount {int dummy; } ;
struct xfs_bulkstat {int bs_projectid; int bs_aextents; int bs_cowextsize_blks; int bs_checked; int bs_sick; int bs_forkoff; int bs_gen; int bs_extents; int bs_extsize_blks; int bs_xflags; int bs_blocks; int bs_ctime_nsec; int bs_mtime_nsec; int bs_atime_nsec; int bs_ctime; int bs_mtime; int bs_atime; int bs_size; int bs_blksize; int bs_rdev; int bs_gid; int bs_uid; int bs_nlink; int bs_mode; int bs_ino; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct xfs_bstat {int bs_projid_lo; int bs_projid_hi; int bs_aextents; scalar_t__ bs_dmstate; scalar_t__ bs_dmevmask; void* bs_cowextsize; int bs_checked; int bs_sick; int bs_forkoff; int bs_gen; int bs_extents; void* bs_extsize; int bs_xflags; int bs_blocks; TYPE_3__ bs_ctime; TYPE_2__ bs_mtime; TYPE_1__ bs_atime; int bs_size; int bs_blksize; int bs_rdev; int bs_gid; int bs_uid; int bs_nlink; int bs_mode; int bs_ino; } ;


 void* XFS_FSB_TO_B (struct xfs_mount*,int ) ;
 int memset (struct xfs_bstat*,int ,int) ;

void
xfs_bulkstat_to_bstat(
 struct xfs_mount *mp,
 struct xfs_bstat *bs1,
 const struct xfs_bulkstat *bstat)
{

 memset(bs1, 0, sizeof(struct xfs_bstat));
 bs1->bs_ino = bstat->bs_ino;
 bs1->bs_mode = bstat->bs_mode;
 bs1->bs_nlink = bstat->bs_nlink;
 bs1->bs_uid = bstat->bs_uid;
 bs1->bs_gid = bstat->bs_gid;
 bs1->bs_rdev = bstat->bs_rdev;
 bs1->bs_blksize = bstat->bs_blksize;
 bs1->bs_size = bstat->bs_size;
 bs1->bs_atime.tv_sec = bstat->bs_atime;
 bs1->bs_mtime.tv_sec = bstat->bs_mtime;
 bs1->bs_ctime.tv_sec = bstat->bs_ctime;
 bs1->bs_atime.tv_nsec = bstat->bs_atime_nsec;
 bs1->bs_mtime.tv_nsec = bstat->bs_mtime_nsec;
 bs1->bs_ctime.tv_nsec = bstat->bs_ctime_nsec;
 bs1->bs_blocks = bstat->bs_blocks;
 bs1->bs_xflags = bstat->bs_xflags;
 bs1->bs_extsize = XFS_FSB_TO_B(mp, bstat->bs_extsize_blks);
 bs1->bs_extents = bstat->bs_extents;
 bs1->bs_gen = bstat->bs_gen;
 bs1->bs_projid_lo = bstat->bs_projectid & 0xFFFF;
 bs1->bs_forkoff = bstat->bs_forkoff;
 bs1->bs_projid_hi = bstat->bs_projectid >> 16;
 bs1->bs_sick = bstat->bs_sick;
 bs1->bs_checked = bstat->bs_checked;
 bs1->bs_cowextsize = XFS_FSB_TO_B(mp, bstat->bs_cowextsize_blks);
 bs1->bs_dmevmask = 0;
 bs1->bs_dmstate = 0;
 bs1->bs_aextents = bstat->bs_aextents;
}
