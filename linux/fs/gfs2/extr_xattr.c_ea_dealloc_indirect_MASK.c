#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct gfs2_sbd {int sd_inptrs; } ;
struct gfs2_rgrpd {scalar_t__ rd_length; } ;
struct gfs2_rgrp_list {unsigned int rl_rgrps; TYPE_1__* rl_ghs; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_diskflags; int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_eattr; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ __be64 ;
struct TYPE_3__ {int /*<<< orphan*/  gh_gl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIO_WAIT ; 
 int EIO ; 
 int /*<<< orphan*/  GFS2_DIF_EA_INDIRECT ; 
 int /*<<< orphan*/  GFS2_METATYPE_IN ; 
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_INDIRECT ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct gfs2_rgrpd* FUNC4 (struct gfs2_sbd*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*,struct gfs2_rgrpd*,scalar_t__,unsigned int) ; 
 struct gfs2_rgrpd* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,TYPE_1__*) ; 
 int FUNC9 (unsigned int,TYPE_1__*) ; 
 int FUNC10 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC12 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_inode*,struct gfs2_rgrp_list*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_rgrp_list*) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_rgrp_list*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC18 (struct gfs2_sbd*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC20 (struct gfs2_rgrp_list*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC21(struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_rgrp_list rlist;
	struct gfs2_rgrpd *rgd;
	struct buffer_head *indbh, *dibh;
	__be64 *eablk, *end;
	unsigned int rg_blocks = 0;
	u64 bstart = 0;
	unsigned int blen = 0;
	unsigned int blks = 0;
	unsigned int x;
	int error;

	error = FUNC13(sdp);
	if (error)
		return error;

	FUNC20(&rlist, 0, sizeof(struct gfs2_rgrp_list));

	error = FUNC11(ip->i_gl, ip->i_eattr, DIO_WAIT, 0, &indbh);
	if (error)
		return error;

	if (FUNC12(sdp, indbh, GFS2_METATYPE_IN)) {
		error = -EIO;
		goto out;
	}

	eablk = (__be64 *)(indbh->b_data + sizeof(struct gfs2_meta_header));
	end = eablk + sdp->sd_inptrs;

	for (; eablk < end; eablk++) {
		u64 bn;

		if (!*eablk)
			break;
		bn = FUNC1(*eablk);

		if (bstart + blen == bn)
			blen++;
		else {
			if (bstart)
				FUNC14(ip, &rlist, bstart);
			bstart = bn;
			blen = 1;
		}
		blks++;
	}
	if (bstart)
		FUNC14(ip, &rlist, bstart);
	else
		goto out;

	FUNC15(&rlist);

	for (x = 0; x < rlist.rl_rgrps; x++) {
		rgd = FUNC7(rlist.rl_ghs[x].gh_gl);
		rg_blocks += rgd->rd_length;
	}

	error = FUNC9(rlist.rl_rgrps, rlist.rl_ghs);
	if (error)
		goto out_rlist_free;

	error = FUNC18(sdp, rg_blocks + RES_DINODE + RES_INDIRECT +
				 RES_STATFS + RES_QUOTA, blks);
	if (error)
		goto out_gunlock;

	FUNC17(ip->i_gl, indbh);

	eablk = (__be64 *)(indbh->b_data + sizeof(struct gfs2_meta_header));
	bstart = 0;
	rgd = NULL;
	blen = 0;

	for (; eablk < end; eablk++) {
		u64 bn;

		if (!*eablk)
			break;
		bn = FUNC1(*eablk);

		if (bstart + blen == bn)
			blen++;
		else {
			if (bstart)
				FUNC6(ip, rgd, bstart, blen);
			bstart = bn;
			rgd = FUNC4(sdp, bstart, true);
			blen = 1;
		}

		*eablk = 0;
		FUNC3(&ip->i_inode, -1);
	}
	if (bstart)
		FUNC6(ip, rgd, bstart, blen);

	ip->i_diskflags &= ~GFS2_DIF_EA_INDIRECT;

	error = FUNC10(ip, &dibh);
	if (!error) {
		FUNC17(ip->i_gl, dibh);
		FUNC5(ip, dibh->b_data);
		FUNC2(dibh);
	}

	FUNC19(sdp);

out_gunlock:
	FUNC8(rlist.rl_rgrps, rlist.rl_ghs);
out_rlist_free:
	FUNC16(&rlist);
out:
	FUNC2(indbh);
	return error;
}