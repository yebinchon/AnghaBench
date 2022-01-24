#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ ar_rgrplvb; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_rindex_uptodate; int /*<<< orphan*/  sd_rindex; TYPE_1__ sd_args; } ;
struct gfs2_rgrpd {int rd_flags; scalar_t__ rd_extfail_pt; int /*<<< orphan*/  rd_gl; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_5__ {struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {TYPE_2__ rs_rbm; } ;
struct gfs2_inode {int /*<<< orphan*/  i_rgd_gh; int /*<<< orphan*/  i_no_addr; TYPE_3__ i_inode; int /*<<< orphan*/  i_goal; struct gfs2_blkreserv i_res; } ;
struct gfs2_alloc_parms {scalar_t__ target; int aflags; scalar_t__ min_target; scalar_t__ allowed; } ;

/* Variables and functions */
 int EBADSLT ; 
 int EINVAL ; 
 int ENOSPC ; 
 int GFS2_AF_ORLOV ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFS2_LFC_INPLACE_RESERVE ; 
 int GFS2_LOG_HEAD_FLUSH_NORMAL ; 
 int GFS2_RDF_CHECK ; 
 int GFS2_RDF_ERROR ; 
 int GFS2_RGF_NOALLOC ; 
 struct gfs2_sbd* FUNC1 (TYPE_3__*) ; 
 int GL_SKIP ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  NO_BLOCK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_rgrpd*) ; 
 scalar_t__ FUNC5 (struct gfs2_sbd*,scalar_t__) ; 
 struct gfs2_rgrpd* FUNC6 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_sbd*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_rgrpd*) ; 
 scalar_t__ FUNC13 (struct gfs2_rgrpd*,int) ; 
 scalar_t__ FUNC14 (struct gfs2_blkreserv*,int) ; 
 int FUNC15 (struct gfs2_inode*) ; 
 scalar_t__ FUNC16 (struct gfs2_blkreserv*) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_blkreserv*) ; 
 scalar_t__ FUNC18 (struct gfs2_rgrpd**,struct gfs2_rgrpd*) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_rgrpd*,struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 scalar_t__ FUNC20 (struct gfs2_rgrpd*,struct gfs2_blkreserv*) ; 
 scalar_t__ FUNC21 (struct gfs2_rgrpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct gfs2_rgrpd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 
 int FUNC24 (struct gfs2_rgrpd*) ; 

int FUNC25(struct gfs2_inode *ip, struct gfs2_alloc_parms *ap)
{
	struct gfs2_sbd *sdp = FUNC1(&ip->i_inode);
	struct gfs2_rgrpd *begin = NULL;
	struct gfs2_blkreserv *rs = &ip->i_res;
	int error = 0, rg_locked, flags = 0;
	u64 last_unlinked = NO_BLOCK;
	int loops = 0;
	u32 free_blocks, skip = 0;

	if (sdp->sd_args.ar_rgrplvb)
		flags |= GL_SKIP;
	if (FUNC5(sdp, ap->target))
		return -EINVAL;
	if (FUNC16(rs)) {
		begin = rs->rs_rbm.rgd;
	} else if (rs->rs_rbm.rgd &&
		   FUNC21(rs->rs_rbm.rgd, ip->i_goal)) {
		begin = rs->rs_rbm.rgd;
	} else {
		FUNC3(ip);
		rs->rs_rbm.rgd = begin = FUNC6(sdp, ip->i_goal, 1);
	}
	if (FUNC2(ip->i_inode.i_mode) && (ap->aflags & GFS2_AF_ORLOV))
		skip = FUNC11(ip);
	if (rs->rs_rbm.rgd == NULL)
		return -EBADSLT;

	while (loops < 3) {
		rg_locked = 1;

		if (!FUNC8(rs->rs_rbm.rgd->rd_gl)) {
			rg_locked = 0;
			if (skip && skip--)
				goto next_rgrp;
			if (!FUNC16(rs)) {
				if (loops == 0 &&
				    !FUNC4(rs->rs_rbm.rgd))
					goto next_rgrp;
				if ((loops < 2) &&
				    FUNC14(rs, 1000) &&
				    FUNC13(rs->rs_rbm.rgd, loops))
					goto next_rgrp;
			}
			error = FUNC9(rs->rs_rbm.rgd->rd_gl,
						   LM_ST_EXCLUSIVE, flags,
						   &ip->i_rgd_gh);
			if (FUNC23(error))
				return error;
			if (!FUNC16(rs) && (loops < 2) &&
			    FUNC13(rs->rs_rbm.rgd, loops))
				goto skip_rgrp;
			if (sdp->sd_args.ar_rgrplvb) {
				error = FUNC24(rs->rs_rbm.rgd);
				if (FUNC23(error)) {
					FUNC7(&ip->i_rgd_gh);
					return error;
				}
			}
		}

		/* Skip unusable resource groups */
		if ((rs->rs_rbm.rgd->rd_flags & (GFS2_RGF_NOALLOC |
						 GFS2_RDF_ERROR)) ||
		    (loops == 0 && ap->target > rs->rs_rbm.rgd->rd_extfail_pt))
			goto skip_rgrp;

		if (sdp->sd_args.ar_rgrplvb)
			FUNC12(rs->rs_rbm.rgd);

		/* Get a reservation if we don't already have one */
		if (!FUNC16(rs))
			FUNC19(rs->rs_rbm.rgd, ip, ap);

		/* Skip rgrps when we can't get a reservation on first pass */
		if (!FUNC16(rs) && (loops < 1))
			goto check_rgrp;

		/* If rgrp has enough free space, use it */
		free_blocks = FUNC20(rs->rs_rbm.rgd, rs);
		if (free_blocks >= ap->target ||
		    (loops == 2 && ap->min_target &&
		     free_blocks >= ap->min_target)) {
			ap->allowed = free_blocks;
			return 0;
		}
check_rgrp:
		/* Check for unlinked inodes which can be reclaimed */
		if (rs->rs_rbm.rgd->rd_flags & GFS2_RDF_CHECK)
			FUNC22(rs->rs_rbm.rgd, &last_unlinked,
					ip->i_no_addr);
skip_rgrp:
		/* Drop reservation, if we couldn't use reserved rgrp */
		if (FUNC16(rs))
			FUNC17(rs);

		/* Unlock rgrp if required */
		if (!rg_locked)
			FUNC7(&ip->i_rgd_gh);
next_rgrp:
		/* Find the next rgrp, and continue looking */
		if (FUNC18(&rs->rs_rbm.rgd, begin))
			continue;
		if (skip)
			continue;

		/* If we've scanned all the rgrps, but found no free blocks
		 * then this checks for some less likely conditions before
		 * trying again.
		 */
		loops++;
		/* Check that fs hasn't grown if writing to rindex */
		if (ip == FUNC0(sdp->sd_rindex) && !sdp->sd_rindex_uptodate) {
			error = FUNC15(ip);
			if (error)
				return error;
		}
		/* Flushing the log may release space */
		if (loops == 2)
			FUNC10(sdp, NULL, GFS2_LOG_HEAD_FLUSH_NORMAL |
				       GFS2_LFC_INPLACE_RESERVE);
	}

	return -ENOSPC;
}