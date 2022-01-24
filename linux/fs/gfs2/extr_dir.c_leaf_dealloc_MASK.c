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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct gfs2_sbd {int /*<<< orphan*/  sd_jbsize; } ;
struct gfs2_rgrpd {scalar_t__ rd_length; } ;
struct gfs2_rgrp_list {unsigned int rl_rgrps; TYPE_1__* rl_ghs; } ;
struct gfs2_leaf {int /*<<< orphan*/  lf_next; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {TYPE_3__ i_inode; int /*<<< orphan*/  i_gl; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  gh_gl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int GFP_NOFS ; 
 struct gfs2_sbd* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  NO_GID_QUOTA_CHANGE ; 
 int /*<<< orphan*/  NO_UID_QUOTA_CHANGE ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 int /*<<< orphan*/  S_IFREG ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 char* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct gfs2_inode*,scalar_t__,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 struct gfs2_rgrpd* FUNC7 (struct gfs2_sbd*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*,scalar_t__) ; 
 int FUNC9 (struct gfs2_inode*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*,struct gfs2_rgrpd*,scalar_t__,int) ; 
 struct gfs2_rgrpd* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,TYPE_1__*) ; 
 int FUNC13 (unsigned int,TYPE_1__*) ; 
 int FUNC14 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC15 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_inode*) ; 
 int FUNC17 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_inode*,struct gfs2_rgrp_list*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_rgrp_list*) ; 
 int /*<<< orphan*/  FUNC20 (struct gfs2_rgrp_list*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC22 (struct gfs2_sbd*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 char* FUNC25 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC26 (struct gfs2_rgrp_list*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC27(struct gfs2_inode *dip, u32 index, u32 len,
			u64 leaf_no, struct buffer_head *leaf_bh,
			int last_dealloc)
{
	struct gfs2_sbd *sdp = FUNC1(&dip->i_inode);
	struct gfs2_leaf *tmp_leaf;
	struct gfs2_rgrp_list rlist;
	struct buffer_head *bh, *dibh;
	u64 blk, nblk;
	unsigned int rg_blocks = 0, l_blocks = 0;
	char *ht;
	unsigned int x, size = len * sizeof(u64);
	int error;

	error = FUNC17(sdp);
	if (error)
		return error;

	FUNC26(&rlist, 0, sizeof(struct gfs2_rgrp_list));

	ht = FUNC25(size, GFP_NOFS | __GFP_NOWARN);
	if (ht == NULL)
		ht = FUNC2(size, GFP_NOFS | __GFP_NOWARN | __GFP_ZERO,
			       PAGE_KERNEL);
	if (!ht)
		return -ENOMEM;

	error = FUNC15(dip, NO_UID_QUOTA_CHANGE, NO_GID_QUOTA_CHANGE);
	if (error)
		goto out;

	/*  Count the number of leaves  */
	bh = leaf_bh;

	for (blk = leaf_no; blk; blk = nblk) {
		if (blk != leaf_no) {
			error = FUNC5(dip, blk, &bh);
			if (error)
				goto out_rlist;
		}
		tmp_leaf = (struct gfs2_leaf *)bh->b_data;
		nblk = FUNC3(tmp_leaf->lf_next);
		if (blk != leaf_no)
			FUNC4(bh);

		FUNC18(dip, &rlist, blk);
		l_blocks++;
	}

	FUNC19(&rlist);

	for (x = 0; x < rlist.rl_rgrps; x++) {
		struct gfs2_rgrpd *rgd = FUNC11(rlist.rl_ghs[x].gh_gl);

		rg_blocks += rgd->rd_length;
	}

	error = FUNC13(rlist.rl_rgrps, rlist.rl_ghs);
	if (error)
		goto out_rlist;

	error = FUNC22(sdp,
			rg_blocks + (FUNC0(size, sdp->sd_jbsize) + 1) +
			RES_DINODE + RES_STATFS + RES_QUOTA, l_blocks);
	if (error)
		goto out_rg_gunlock;

	bh = leaf_bh;

	for (blk = leaf_no; blk; blk = nblk) {
		struct gfs2_rgrpd *rgd;

		if (blk != leaf_no) {
			error = FUNC5(dip, blk, &bh);
			if (error)
				goto out_end_trans;
		}
		tmp_leaf = (struct gfs2_leaf *)bh->b_data;
		nblk = FUNC3(tmp_leaf->lf_next);
		if (blk != leaf_no)
			FUNC4(bh);

		rgd = FUNC7(sdp, blk, true);
		FUNC10(dip, rgd, blk, 1);
		FUNC6(&dip->i_inode, -1);
	}

	error = FUNC9(dip, ht, index * sizeof(u64), size);
	if (error != size) {
		if (error >= 0)
			error = -EIO;
		goto out_end_trans;
	}

	error = FUNC14(dip, &dibh);
	if (error)
		goto out_end_trans;

	FUNC21(dip->i_gl, dibh);
	/* On the last dealloc, make this a regular file in case we crash.
	   (We don't want to free these blocks a second time.)  */
	if (last_dealloc)
		dip->i_inode.i_mode = S_IFREG;
	FUNC8(dip, dibh->b_data);
	FUNC4(dibh);

out_end_trans:
	FUNC23(sdp);
out_rg_gunlock:
	FUNC12(rlist.rl_rgrps, rlist.rl_ghs);
out_rlist:
	FUNC20(&rlist);
	FUNC16(dip);
out:
	FUNC24(ht);
	return error;
}