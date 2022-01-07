
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int sb_logsunit; int sb_blocksize; int sb_logsectsize; int sb_width; int sb_unit; int sb_uuid; int sb_logstart; int sb_rextents; int sb_rblocks; int sb_dblocks; int sb_imax_pct; int sb_inodesize; int sb_sectsize; int sb_logblocks; int sb_agcount; int sb_agblocks; int sb_rextsize; } ;
struct xfs_fsop_geom {int flags; int version; int logsunit; int dirblocksize; int rtsectsize; int logsectsize; int swidth; int sunit; int uuid; int logstart; int rtextents; int rtblocks; int datablocks; int imaxpct; int inodesize; int sectsize; int logblocks; int agcount; int agblocks; int rtextsize; int blocksize; } ;


 int BBSIZE ;
 int BUILD_BUG_ON (int) ;
 int XFS_FSOP_GEOM_FLAGS_ATTR ;
 int XFS_FSOP_GEOM_FLAGS_ATTR2 ;
 int XFS_FSOP_GEOM_FLAGS_DALIGN ;
 int XFS_FSOP_GEOM_FLAGS_DIRV2 ;
 int XFS_FSOP_GEOM_FLAGS_DIRV2CI ;
 int XFS_FSOP_GEOM_FLAGS_EXTFLG ;
 int XFS_FSOP_GEOM_FLAGS_FINOBT ;
 int XFS_FSOP_GEOM_FLAGS_FTYPE ;
 int XFS_FSOP_GEOM_FLAGS_IALIGN ;
 int XFS_FSOP_GEOM_FLAGS_LAZYSB ;
 int XFS_FSOP_GEOM_FLAGS_LOGV2 ;
 int XFS_FSOP_GEOM_FLAGS_NLINK ;
 int XFS_FSOP_GEOM_FLAGS_PROJID32 ;
 int XFS_FSOP_GEOM_FLAGS_QUOTA ;
 int XFS_FSOP_GEOM_FLAGS_REFLINK ;
 int XFS_FSOP_GEOM_FLAGS_RMAPBT ;
 int XFS_FSOP_GEOM_FLAGS_SECTOR ;
 int XFS_FSOP_GEOM_FLAGS_SPINODES ;
 int XFS_FSOP_GEOM_FLAGS_V5SB ;
 int XFS_FSOP_GEOM_VERSION ;
 int XFS_FSOP_GEOM_VERSION_V5 ;
 int memcpy (int ,int *,int) ;
 int memset (struct xfs_fsop_geom*,int ,int) ;
 int xfs_dir2_dirblock_bytes (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasalign (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasasciici (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasattr (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasattr2 (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hascrc (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasdalign (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasfinobt (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasftype (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_haslazysbcount (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_haslogv2 (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasprojid32bit (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasquota (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasreflink (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasrmapbt (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hassector (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hassparseinodes (struct xfs_sb*) ;

void
xfs_fs_geometry(
 struct xfs_sb *sbp,
 struct xfs_fsop_geom *geo,
 int struct_version)
{
 memset(geo, 0, sizeof(struct xfs_fsop_geom));

 geo->blocksize = sbp->sb_blocksize;
 geo->rtextsize = sbp->sb_rextsize;
 geo->agblocks = sbp->sb_agblocks;
 geo->agcount = sbp->sb_agcount;
 geo->logblocks = sbp->sb_logblocks;
 geo->sectsize = sbp->sb_sectsize;
 geo->inodesize = sbp->sb_inodesize;
 geo->imaxpct = sbp->sb_imax_pct;
 geo->datablocks = sbp->sb_dblocks;
 geo->rtblocks = sbp->sb_rblocks;
 geo->rtextents = sbp->sb_rextents;
 geo->logstart = sbp->sb_logstart;
 BUILD_BUG_ON(sizeof(geo->uuid) != sizeof(sbp->sb_uuid));
 memcpy(geo->uuid, &sbp->sb_uuid, sizeof(sbp->sb_uuid));

 if (struct_version < 2)
  return;

 geo->sunit = sbp->sb_unit;
 geo->swidth = sbp->sb_width;

 if (struct_version < 3)
  return;

 geo->version = XFS_FSOP_GEOM_VERSION;
 geo->flags = XFS_FSOP_GEOM_FLAGS_NLINK |
       XFS_FSOP_GEOM_FLAGS_DIRV2 |
       XFS_FSOP_GEOM_FLAGS_EXTFLG;
 if (xfs_sb_version_hasattr(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_ATTR;
 if (xfs_sb_version_hasquota(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_QUOTA;
 if (xfs_sb_version_hasalign(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_IALIGN;
 if (xfs_sb_version_hasdalign(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_DALIGN;
 if (xfs_sb_version_hassector(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_SECTOR;
 if (xfs_sb_version_hasasciici(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_DIRV2CI;
 if (xfs_sb_version_haslazysbcount(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_LAZYSB;
 if (xfs_sb_version_hasattr2(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_ATTR2;
 if (xfs_sb_version_hasprojid32bit(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_PROJID32;
 if (xfs_sb_version_hascrc(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_V5SB;
 if (xfs_sb_version_hasftype(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_FTYPE;
 if (xfs_sb_version_hasfinobt(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_FINOBT;
 if (xfs_sb_version_hassparseinodes(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_SPINODES;
 if (xfs_sb_version_hasrmapbt(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_RMAPBT;
 if (xfs_sb_version_hasreflink(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_REFLINK;
 if (xfs_sb_version_hassector(sbp))
  geo->logsectsize = sbp->sb_logsectsize;
 else
  geo->logsectsize = BBSIZE;
 geo->rtsectsize = sbp->sb_blocksize;
 geo->dirblocksize = xfs_dir2_dirblock_bytes(sbp);

 if (struct_version < 4)
  return;

 if (xfs_sb_version_haslogv2(sbp))
  geo->flags |= XFS_FSOP_GEOM_FLAGS_LOGV2;

 geo->logsunit = sbp->sb_logsunit;

 if (struct_version < 5)
  return;

 geo->version = XFS_FSOP_GEOM_VERSION_V5;
}
