#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xfs_sb {int /*<<< orphan*/  sb_logsunit; int /*<<< orphan*/  sb_blocksize; int /*<<< orphan*/  sb_logsectsize; int /*<<< orphan*/  sb_width; int /*<<< orphan*/  sb_unit; int /*<<< orphan*/  sb_uuid; int /*<<< orphan*/  sb_logstart; int /*<<< orphan*/  sb_rextents; int /*<<< orphan*/  sb_rblocks; int /*<<< orphan*/  sb_dblocks; int /*<<< orphan*/  sb_imax_pct; int /*<<< orphan*/  sb_inodesize; int /*<<< orphan*/  sb_sectsize; int /*<<< orphan*/  sb_logblocks; int /*<<< orphan*/  sb_agcount; int /*<<< orphan*/  sb_agblocks; int /*<<< orphan*/  sb_rextsize; } ;
struct xfs_fsop_geom {int flags; int /*<<< orphan*/  version; int /*<<< orphan*/  logsunit; int /*<<< orphan*/  dirblocksize; int /*<<< orphan*/  rtsectsize; int /*<<< orphan*/  logsectsize; int /*<<< orphan*/  swidth; int /*<<< orphan*/  sunit; int /*<<< orphan*/  uuid; int /*<<< orphan*/  logstart; int /*<<< orphan*/  rtextents; int /*<<< orphan*/  rtblocks; int /*<<< orphan*/  datablocks; int /*<<< orphan*/  imaxpct; int /*<<< orphan*/  inodesize; int /*<<< orphan*/  sectsize; int /*<<< orphan*/  logblocks; int /*<<< orphan*/  agcount; int /*<<< orphan*/  agblocks; int /*<<< orphan*/  rtextsize; int /*<<< orphan*/  blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
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
 int /*<<< orphan*/  XFS_FSOP_GEOM_VERSION ; 
 int /*<<< orphan*/  XFS_FSOP_GEOM_VERSION_V5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_fsop_geom*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_sb*) ; 
 scalar_t__ FUNC4 (struct xfs_sb*) ; 
 scalar_t__ FUNC5 (struct xfs_sb*) ; 
 scalar_t__ FUNC6 (struct xfs_sb*) ; 
 scalar_t__ FUNC7 (struct xfs_sb*) ; 
 scalar_t__ FUNC8 (struct xfs_sb*) ; 
 scalar_t__ FUNC9 (struct xfs_sb*) ; 
 scalar_t__ FUNC10 (struct xfs_sb*) ; 
 scalar_t__ FUNC11 (struct xfs_sb*) ; 
 scalar_t__ FUNC12 (struct xfs_sb*) ; 
 scalar_t__ FUNC13 (struct xfs_sb*) ; 
 scalar_t__ FUNC14 (struct xfs_sb*) ; 
 scalar_t__ FUNC15 (struct xfs_sb*) ; 
 scalar_t__ FUNC16 (struct xfs_sb*) ; 
 scalar_t__ FUNC17 (struct xfs_sb*) ; 
 scalar_t__ FUNC18 (struct xfs_sb*) ; 
 scalar_t__ FUNC19 (struct xfs_sb*) ; 

void
FUNC20(
	struct xfs_sb		*sbp,
	struct xfs_fsop_geom	*geo,
	int			struct_version)
{
	FUNC2(geo, 0, sizeof(struct xfs_fsop_geom));

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
	FUNC0(sizeof(geo->uuid) != sizeof(sbp->sb_uuid));
	FUNC1(geo->uuid, &sbp->sb_uuid, sizeof(sbp->sb_uuid));

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
	if (FUNC6(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_ATTR;
	if (FUNC15(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_QUOTA;
	if (FUNC4(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_IALIGN;
	if (FUNC9(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_DALIGN;
	if (FUNC18(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_SECTOR;
	if (FUNC5(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_DIRV2CI;
	if (FUNC12(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_LAZYSB;
	if (FUNC7(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_ATTR2;
	if (FUNC14(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_PROJID32;
	if (FUNC8(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_V5SB;
	if (FUNC11(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_FTYPE;
	if (FUNC10(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_FINOBT;
	if (FUNC19(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_SPINODES;
	if (FUNC17(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_RMAPBT;
	if (FUNC16(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_REFLINK;
	if (FUNC18(sbp))
		geo->logsectsize = sbp->sb_logsectsize;
	else
		geo->logsectsize = BBSIZE;
	geo->rtsectsize = sbp->sb_blocksize;
	geo->dirblocksize = FUNC3(sbp);

	if (struct_version < 4)
		return;

	if (FUNC13(sbp))
		geo->flags |= XFS_FSOP_GEOM_FLAGS_LOGV2;

	geo->logsunit = sbp->sb_logsunit;

	if (struct_version < 5)
		return;

	geo->version = XFS_FSOP_GEOM_VERSION_V5;
}