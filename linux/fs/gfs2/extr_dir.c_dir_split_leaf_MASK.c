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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct qstr {int hash; char* name; int len; } ;
struct inode {int dummy; } ;
struct gfs2_leaf {int /*<<< orphan*/  lf_depth; int /*<<< orphan*/  lf_entries; } ;
struct gfs2_inode {int i_depth; struct inode i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_dirent {int /*<<< orphan*/  de_type; int /*<<< orphan*/  de_inum; int /*<<< orphan*/  de_hash; int /*<<< orphan*/  de_name_len; } ;
struct buffer_head {char* b_data; int /*<<< orphan*/  b_blocknr; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct gfs2_dirent*) ; 
 int FUNC4 (struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*,struct buffer_head*,struct gfs2_dirent*,struct gfs2_dirent*) ; 
 scalar_t__ FUNC11 (struct gfs2_inode*,struct buffer_head*,struct gfs2_dirent**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC13 (struct gfs2_inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC14 (struct gfs2_inode*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_inode*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_inode*) ; 
 int FUNC20 (struct gfs2_inode*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct gfs2_dirent*) ; 
 struct gfs2_dirent* FUNC22 (struct inode*,struct buffer_head*,struct qstr*,void*) ; 
 int FUNC23 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (int,int,int /*<<< orphan*/ ) ; 
 struct gfs2_leaf* FUNC27 (struct inode*,struct buffer_head**,int) ; 

__attribute__((used)) static int FUNC28(struct inode *inode, const struct qstr *name)
{
	struct gfs2_inode *dip = FUNC1(inode);
	struct buffer_head *nbh, *obh, *dibh;
	struct gfs2_leaf *nleaf, *oleaf;
	struct gfs2_dirent *dent = NULL, *prev = NULL, *next = NULL, *new;
	u32 start, len, half_len, divider;
	u64 bn, leaf_no;
	__be64 *lp;
	u32 index;
	int x;
	int error;

	index = name->hash >> (32 - dip->i_depth);
	error = FUNC14(dip, index, &leaf_no);
	if (error)
		return error;

	/*  Get the old leaf block  */
	error = FUNC13(dip, leaf_no, &obh);
	if (error)
		return error;

	oleaf = (struct gfs2_leaf *)obh->b_data;
	if (dip->i_depth == FUNC6(oleaf->lf_depth)) {
		FUNC8(obh);
		return 1; /* can't split */
	}

	FUNC24(dip->i_gl, obh);

	nleaf = FUNC27(inode, &nbh, FUNC6(oleaf->lf_depth) + 1);
	if (!nleaf) {
		FUNC8(obh);
		return -ENOSPC;
	}
	bn = nbh->b_blocknr;

	/*  Compute the start and len of leaf pointers in the hash table.  */
	len = FUNC0(dip->i_depth - FUNC6(oleaf->lf_depth));
	half_len = len >> 1;
	if (!half_len) {
		FUNC12(FUNC2(inode), "i_depth %u lf_depth %u index %u\n",
			dip->i_depth, FUNC6(oleaf->lf_depth), index);
		FUNC17(dip);
		error = -EIO;
		goto fail_brelse;
	}

	start = (index & ~(len - 1));

	/* Change the pointers.
	   Don't bother distinguishing stuffed from non-stuffed.
	   This code is complicated enough already. */
	lp = FUNC26(half_len, sizeof(__be64), GFP_NOFS);
	if (!lp) {
		error = -ENOMEM;
		goto fail_brelse;
	}

	/*  Change the pointers  */
	for (x = 0; x < half_len; x++)
		lp[x] = FUNC9(bn);

	FUNC19(dip);

	error = FUNC20(dip, (char *)lp, start * sizeof(u64),
				    half_len * sizeof(u64));
	if (error != half_len * sizeof(u64)) {
		if (error >= 0)
			error = -EIO;
		goto fail_lpfree;
	}

	FUNC25(lp);

	/*  Compute the divider  */
	divider = (start + half_len) << (32 - dip->i_depth);

	/*  Copy the entries  */
	dent = (struct gfs2_dirent *)(obh->b_data + sizeof(struct gfs2_leaf));

	do {
		next = dent;
		if (FUNC11(dip, obh, &next))
			next = NULL;

		if (!FUNC21(dent) &&
		    FUNC7(dent->de_hash) < divider) {
			struct qstr str;
			void *ptr = ((char *)dent - obh->b_data) + nbh->b_data;
			str.name = (char*)(dent+1);
			str.len = FUNC6(dent->de_name_len);
			str.hash = FUNC7(dent->de_hash);
			new = FUNC22(inode, nbh, &str, ptr);
			if (FUNC3(new)) {
				error = FUNC4(new);
				break;
			}

			new->de_inum = dent->de_inum; /* No endian worries */
			new->de_type = dent->de_type; /* No endian worries */
			FUNC5(&nleaf->lf_entries, 1);

			FUNC10(dip, obh, prev, dent);

			if (!oleaf->lf_entries)
				FUNC17(dip);
			FUNC5(&oleaf->lf_entries, -1);

			if (!prev)
				prev = dent;
		} else {
			prev = dent;
		}
		dent = next;
	} while (dent);

	oleaf->lf_depth = nleaf->lf_depth;

	error = FUNC23(dip, &dibh);
	if (!FUNC16(FUNC2(&dip->i_inode), !error)) {
		FUNC24(dip->i_gl, dibh);
		FUNC15(&dip->i_inode, 1);
		FUNC18(dip, dibh->b_data);
		FUNC8(dibh);
	}

	FUNC8(obh);
	FUNC8(nbh);

	return error;

fail_lpfree:
	FUNC25(lp);

fail_brelse:
	FUNC8(obh);
	FUNC8(nbh);
	return error;
}