#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct qstr {int len; scalar_t__ name; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int sb_bsize; } ;
struct gfs2_sbd {int sd_hash_ptrs; TYPE_1__ sd_sb; } ;
struct gfs2_leaf {void* lf_entries; } ;
struct gfs2_inode {scalar_t__ i_entries; int i_depth; int /*<<< orphan*/  i_diskflags; int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_dirent {void* de_rec_len; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int b_size; scalar_t__ b_data; int /*<<< orphan*/  b_blocknr; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFS2_DIF_EXHASH ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 struct gfs2_sbd* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct gfs2_dirent*) ; 
 int FUNC4 (struct gfs2_dirent*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*,int,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_inode*,scalar_t__) ; 
 int /*<<< orphan*/  gfs2_dirent_last ; 
 struct gfs2_dirent* FUNC14 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,struct qstr*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int) ; 
 struct gfs2_leaf* FUNC18 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct inode *inode)
{
	struct gfs2_inode *dip = FUNC1(inode);
	struct gfs2_sbd *sdp = FUNC2(inode);
	struct gfs2_dirent *dent;
	struct qstr args;
	struct buffer_head *bh, *dibh;
	struct gfs2_leaf *leaf;
	int y;
	u32 x;
	__be64 *lp;
	u64 bn;
	int error;

	error = FUNC15(dip, &dibh);
	if (error)
		return error;

	/*  Turn over a new leaf  */

	leaf = FUNC18(inode, &bh, 0);
	if (!leaf)
		return -ENOSPC;
	bn = bh->b_blocknr;

	FUNC10(sdp, dip->i_entries < FUNC0(16));
	leaf->lf_entries = FUNC7(dip->i_entries);

	/*  Copy dirents  */

	FUNC12(bh, sizeof(struct gfs2_leaf), dibh,
			     sizeof(struct gfs2_dinode));

	/*  Find last entry  */

	x = 0;
	args.len = bh->b_size - sizeof(struct gfs2_dinode) +
		   sizeof(struct gfs2_leaf);
	args.name = bh->b_data;
	dent = FUNC14(&dip->i_inode, bh->b_data, bh->b_size,
				gfs2_dirent_last, &args, NULL);
	if (!dent) {
		FUNC6(bh);
		FUNC6(dibh);
		return -EIO;
	}
	if (FUNC3(dent)) {
		FUNC6(bh);
		FUNC6(dibh);
		return FUNC4(dent);
	}

	/*  Adjust the last dirent's record length
	   (Remember that dent still points to the last entry.)  */

	dent->de_rec_len = FUNC7(FUNC5(dent->de_rec_len) +
		sizeof(struct gfs2_dinode) -
		sizeof(struct gfs2_leaf));

	FUNC6(bh);

	/*  We're done with the new leaf block, now setup the new
	    hash table.  */

	FUNC16(dip->i_gl, dibh);
	FUNC11(dibh, sizeof(struct gfs2_dinode));

	lp = (__be64 *)(dibh->b_data + sizeof(struct gfs2_dinode));

	for (x = sdp->sd_hash_ptrs; x--; lp++)
		*lp = FUNC8(bn);

	FUNC17(inode, sdp->sd_sb.sb_bsize / 2);
	FUNC9(&dip->i_inode, 1);
	dip->i_diskflags |= GFS2_DIF_EXHASH;

	for (x = sdp->sd_hash_ptrs, y = -1; x; x >>= 1, y++) ;
	dip->i_depth = y;

	FUNC13(dip, dibh->b_data);

	FUNC6(dibh);

	return 0;
}